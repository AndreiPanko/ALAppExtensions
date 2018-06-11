﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

codeunit 51871 "C5 LedTrans Migrator"
{
    var
        GeneralJournalBatchCode: Label 'GLACCMIGR', Locked = true;

    trigger OnRun();
    var
        C5SchemaParameters: Record "C5 Schema Parameters";
        C5LedTrans: Record "C5 LedTrans";
        GenJournalBatch: Record "Gen. Journal Batch";
        DataMigrationStatus: Record "Data Migration Status";
        DataMigrationStatusFacade: Codeunit "Data Migration Status Facade";
        C5MigrDashboardMgt: Codeunit "C5 Migr. Dashboard Mgt";
        CurrentAccount: Code[10];
        TotalAmount: Decimal;
        PostingDate: Date;
        Batch: Integer;
    begin
        if not ChartOfAccountsMigrated() then begin
            DataMigrationStatus.SetRange("Migration Type", C5MigrDashboardMgt.GetC5MigrationTypeTxt());
            DataMigrationStatus.SetRange("Destination Table ID", Database::"C5 LedTrans");
            DataMigrationStatus.FindFirst();
            DataMigrationStatusFacade.UpdateLineStatus(C5MigrDashboardMgt.GetC5MigrationTypeTxt(), Database::"C5 LedTrans", DataMigrationStatus.Status::Completed);
            DataMigrationStatusFacade.IncrementMigratedRecordCount(C5MigrDashboardMgt.GetC5MigrationTypeTxt(), Database::"C5 LedTrans", DataMigrationStatus."Total Number");
            exit;
        end;
    
        DataMigrationStatusFacade.UpdateLineStatus(C5MigrDashboardMgt.GetC5MigrationTypeTxt(), Database::"C5 LedTrans", DataMigrationStatus.Status::"In Progress");
        C5SchemaParameters.GetSingleInstance();

        PostingDate := CalcDate('<-1D>', C5SchemaParameters.CurrentPeriod);
        C5LedTrans.SetRange(BudgetCode, C5LedTrans.BudgetCode::Actual);
        C5LedTrans.SetFilter(Date_, '<%1&<>%2', C5SchemaParameters.CurrentPeriod, 0D);
        C5LedTrans.SetCurrentKey(Account, Date_, Transaction);
        if C5LedTrans.FindSet() then begin
            CreateGeneralJournalBatchIfNeeded(GenJournalBatch);
            repeat
                DataMigrationStatusFacade.IncrementMigratedRecordCount(C5MigrDashboardMgt.GetC5MigrationTypeTxt(), Database::"C5 LedTrans", 1);
                if CurrentAccount <> C5LedTrans.Account then begin
                    if CurrentAccount <> '' then begin
                        InsertNewGenJournalLine(GenJournalBatch, TotalAmount, PostingDate, PostingDate, CurrentAccount, 'C5MIGRATE');
                        // Update the DashBoard after each Account balance has been Migrated
                        Commit();
                    end;
                        
                    CurrentAccount := C5LedTrans.Account;
                    TotalAmount := 0;            
                end;
                TotalAmount += C5LedTrans.AmountMST;          
            until C5LedTrans.Next() = 0;
            // Insert() last Account
            InsertNewGenJournalLine(GenJournalBatch, TotalAmount, PostingDate, PostingDate, CurrentAccount, 'C5MIGRATE');
        end;
        
        C5LedTrans.SetFilter(Date_, '>=%1', C5SchemaParameters.CurrentPeriod);
        C5LedTrans.SetCurrentKey(Date_, Transaction);
        if C5LedTrans.FindSet() then begin
            CreateGeneralJournalBatchIfNeeded(GenJournalBatch);
            repeat            
                InsertNewGenJournalLine(GenJournalBatch, C5LedTrans.AmountMST, C5LedTrans.Date_, C5LedTrans.DueDate, C5LedTrans.Account, Format(C5LedTrans.Voucher));
                DataMigrationStatusFacade.IncrementMigratedRecordCount(C5MigrDashboardMgt.GetC5MigrationTypeTxt(), Database::"C5 LedTrans", 1);
                Batch += 1;
                if Batch = 100 then begin
                    // Update the DashBoard
                    Commit();
                    Batch := 0;
                end;
            until C5LedTrans.Next() = 0;
        end;

        // Update the dashboard with the number of system transactions that should not be migrated
        C5LedTrans.Reset();
        C5LedTrans.SetFilter(BudgetCode, '<>%1', C5LedTrans.BudgetCode::Actual);
        if C5LedTrans.FindSet() then
            DataMigrationStatusFacade.IncrementMigratedRecordCount(C5MigrDashboardMgt.GetC5MigrationTypeTxt(), Database::"C5 LedTrans", C5LedTrans.Count());
        C5LedTrans.Reset();
        C5LedTrans.SetRange(Date_, 0D);
        if C5LedTrans.FindSet() then
            DataMigrationStatusFacade.IncrementMigratedRecordCount(C5MigrDashboardMgt.GetC5MigrationTypeTxt(), Database::"C5 LedTrans", C5LedTrans.Count());
        DataMigrationStatusFacade.UpdateLineStatus(C5MigrDashboardMgt.GetC5MigrationTypeTxt(), Database::"C5 LedTrans", DataMigrationStatus.Status::Completed);
    end;

    local procedure InsertNewGenJournalLine(GenJournalBatch: Record "Gen. Journal Batch"; LineAmount: Decimal; PostingDate: Date; DueDate: Date; Account: Code[10]; DocumentNo: Text)
    var
        GenJournalLine: Record "Gen. Journal Line";
        C5LedTableMigrator: Codeunit "C5 LedTable Migrator";
        LineNo: Integer;
    begin
        if LineAmount = 0 then
            exit;
        with GenJournalLine do begin
            SetCurrentKey("Line No.");
            SetAscending("Line No.", true);
            if FindLast() then
                LineNo := "Line No." + 1;
            Init();
            Validate("Journal Template Name", GenJournalBatch."Journal Template Name");
            Validate("Journal Batch Name", GenJournalBatch.Name);
            Validate("Account Type", "Account Type"::"G/L Account");
            Validate("Account No.", C5LedTableMigrator.FillWithLeadingZeros(Account));
            Validate("Document No.", DocumentNo);
            Validate("Line No.", LineNo);
            Validate(Amount, LineAmount);
            Validate("Posting Date", PostingDate);
            Validate("Due Date", DueDate);
            Insert(true);
        end;
    end;

    local procedure CreateGeneralJournalBatchIfNeeded(var GenJournalBatch: Record "Gen. Journal Batch")
    var
        TemplateName: Code[10];
    begin
        TemplateName := CreateGeneralJournalTemplateIfNeeded(CopyStr(GeneralJournalBatchCode, 1, 10));
        GenJournalBatch.SetRange("Journal Template Name", TemplateName);
        GenJournalBatch.SetRange(Name, GeneralJournalBatchCode);
        GenJournalBatch.SetRange("No. Series", '');
        GenJournalBatch.SetRange("Posting No. Series", '');
        if not GenJournalBatch.FindFirst() then begin
            GenJournalBatch.Init();
            GenJournalBatch.Validate("Journal Template Name", TemplateName);
            GenJournalBatch.SetupNewBatch();
            GenJournalBatch.Validate(Name, GeneralJournalBatchCode);
            GenJournalBatch.Validate(Description, GeneralJournalBatchCode);
            GenJournalBatch."No. Series" := '';
            GenJournalBatch."Posting No. Series" := '';
            GenJournalBatch.Insert(true);
        end;
    end;

    local procedure CreateGeneralJournalTemplateIfNeeded(GeneralJournalBatchCode: Code[10]): Code[10]
    VAR
        GenJournalTemplate: Record "Gen. Journal Template";
    begin
        GenJournalTemplate.SetRange(Type, GenJournalTemplate.Type::General);
        GenJournalTemplate.SetRange(Recurring, FALSE);
        if not GenJournalTemplate.FindFirst() then begin
            GenJournalTemplate.Init();
            GenJournalTemplate.Validate(Name, GeneralJournalBatchCode);
            GenJournalTemplate.Validate(Type, GenJournalTemplate.Type::General);
            GenJournalTemplate.Validate(Recurring, FALSE);
            GenJournalTemplate.Insert(true);
        end;
        exit(GenJournalTemplate.Name);
    end;

    local procedure ChartOfAccountsMigrated(): Boolean
    var
        DataMigrationStatus: Record "Data Migration Status";
        C5MigrDashboardMgt: Codeunit "C5 Migr. Dashboard Mgt";
    begin
        DataMigrationStatus.SetRange("Migration Type", C5MigrDashboardMgt.GetC5MigrationTypeTxt());
        DataMigrationStatus.SetRange("Destination Table ID", Database::"G/L Account");
        exit(DataMigrationStatus.FindFirst());
    end;

    procedure GetHardCodedBatchName(): Code[10]
    begin
        exit(CopyStr(GeneralJournalBatchCode, 1, 10));
    end;
}