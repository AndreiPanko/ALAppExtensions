// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51897 "C5 LedTrans"
{
    Caption = 'C5 Ledger Entry';
    
    fields
    {
        field(50001;RecId;Integer) 
        {
            Caption='Row number';
            AutoIncrement=true;
        }
        field(50002;LastChanged;Date) 
        {
            Caption='Last changed';
        }
        field(50003;Account;Code[10]) 
        {
            Caption='Account';
        }
        field(50004;BudgetCode;Option) 
        {
            Caption='Budget code';
            OptionMembers = Actual, Budget, "Rev. 1", "Rev. 2", "Rev. 3", "Rev. 4", "Rev. 5", "Rev. 6";
        }
        field(50005;Department;Code[10]) 
        {
            Caption='Department';
        }
        field(50006;Date_;Date) 
        {
            Caption='Date';
        }
        field(50007;Voucher;Integer) 
        {
            Caption='Voucher';
        }
        field(50008;Txt;Text[40]) 
        {
            Caption='Text';
        }
        field(50009;AmountMST;Decimal) 
        {
            Caption='Amount LCY';
        }
        field(50010;AmountCur;Decimal) 
        {
            Caption='Amount in cur.';
        }
        field(50011;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50012;Vat;Code[10]) 
        {
            Caption='VAT';
        }
        field(50013;VatAmount;Decimal) 
        {
            Caption='VAT amount LCY';
        }
        field(50014;Qty;Decimal) 
        {
            Caption='Qty';
        }
        field(50015;TransType;Option) 
        {
            Caption='Entry type';
            OptionMembers = " ", Invoice, "Credit note", Payment, Interest, Difference, Adjustment, "Cash discount", "Packing slip", Project, "Secondary rounding", "Journal difference", "Reminder fee";
        }
        field(50016;DueDate;Date) 
        {
            Caption='Due';
        }
        field(50017;Transaction;Integer) 
        {
            Caption='Transaction';
        }
        field(50018;CreatedBy;Integer) 
        {
            Caption='Created by';
            DataClassification=EndUserIdentifiableInformation;
        }
        field(50019;JourNumber;Integer) 
        {
            Caption='Journal no.';
        }
        field(50020;Amount2;Decimal) 
        {
            Caption='Amount in';
        }
        field(50021;LockAmount2;Option) 
        {
            Caption='Lock Amount 2';
            OptionMembers = No, Yes;
        }
        field(50022;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50023;Purpose;Code[10]) 
        {
            Caption='Purpose';
        }
        field(50024;ReconcileNo;Integer) 
        {
            Caption='Reconciliation no.';
        }
        field(50025;VatRepCounter;Integer) 
        {
            Caption='VAT report counter';
        }
        field(50026;VatPeriodRecId;Integer) 
        {
            Caption='Settlement period';
        }
    }

    keys
    {
        key(PK;RecId)
        {
            Clustered = true;
        }
    }
}

