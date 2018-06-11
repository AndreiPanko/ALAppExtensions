﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

xmlport 51894 "C5 VendTrans"
{
    Direction=Import;
    Format=VariableText;
    FormatEvaluate=XML;


    schema
    {
        textelement(root)
        {
            MinOccurs=Zero;
            XmlName='VendTransDocument';
            tableelement(C5VendTrans; "C5 VendTrans")
            {
                fieldelement(BudgetCode; C5VendTrans.BudgetCode) { }
                fieldelement(Account; C5VendTrans.Account) { }
                fieldelement(Department; C5VendTrans.Department) { }
                textelement(Date_Text)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        C5HelperFunctions.TryConvertFromStringDate(Date_Text, CopyStr(DateFormatString, 1, 20), C5VendTrans.Date_);
                    end;
                }

                fieldelement(Voucher; C5VendTrans.Voucher) { }
                fieldelement(Txt; C5VendTrans.Txt) { }
                fieldelement(TransType; C5VendTrans.TransType) { }
                fieldelement(AmountMST; C5VendTrans.AmountMST) { }
                fieldelement(AmountCur; C5VendTrans.AmountCur) { }
                fieldelement(Currency; C5VendTrans.Currency) { }
                fieldelement(Vat; C5VendTrans.Vat) { }
                fieldelement(VatAmount; C5VendTrans.VatAmount) { }
                fieldelement(Approved; C5VendTrans.Approved) { }
                fieldelement(ApprovedBy; C5VendTrans.ApprovedBy) { }
                fieldelement(CashDiscAmount; C5VendTrans.CashDiscAmount) { }
                textelement(CashDiscDateText)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        C5HelperFunctions.TryConvertFromStringDate(CashDiscDateText, CopyStr(DateFormatString, 1, 20), C5VendTrans.CashDiscDate);
                    end;
                }

                textelement(DueDateText)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        C5HelperFunctions.TryConvertFromStringDate(DueDateText, CopyStr(DateFormatString, 1, 20), C5VendTrans.DueDate);
                    end;
                }

                fieldelement(Open; C5VendTrans.Open) { }
                fieldelement(ExchRate; C5VendTrans.ExchRate) { }
                fieldelement(RESERVED3; C5VendTrans.RESERVED3) { }
                fieldelement(RESERVED4; C5VendTrans.RESERVED4) { }
                fieldelement(PostedDiffAmount; C5VendTrans.PostedDiffAmount) { }
                fieldelement(InvoiceNumber; C5VendTrans.InvoiceNumber) { }
                fieldelement(RESERVED1; C5VendTrans.RESERVED1) { }
                fieldelement(RefRecId; C5VendTrans.RefRecId) { }
                fieldelement(Transaction; C5VendTrans.Transaction) { }
                fieldelement(RESERVED6; C5VendTrans.RESERVED6) { }
                fieldelement(PaymId; C5VendTrans.PaymId) { }
                textelement(ProcessingDateText)
                {
                    trigger OnAfterAssignVariable()
                    begin
                        C5HelperFunctions.TryConvertFromStringDate(ProcessingDateText, CopyStr(DateFormatString, 1, 20), C5VendTrans.ProcessingDate);
                    end;
                }

                fieldelement(CashDisc; C5VendTrans.CashDisc) { }
                fieldelement(PaymentMode; C5VendTrans.PaymentMode) { }
                fieldelement(PaymSpec; C5VendTrans.PaymSpec) { }
                fieldelement(ExchRateTri; C5VendTrans.ExchRateTri) { }
                fieldelement(Centre; C5VendTrans.Centre) { }
                fieldelement(Purpose; C5VendTrans.Purpose) { }
           }
       }
    }
    
    var
        C5HelperFunctions: Codeunit "C5 Helper Functions";
        DateFormatString: label 'yyyy/MM/dd', locked=true;
}

