// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51892 "C5 CustTrans"
{
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
        field(50003;BudgetCode;Option) 
        {
            Caption='Budget code';
            OptionMembers = Actual, Budget, "Rev. 1", "Rev. 2", "Rev. 3", "Rev. 4", "Rev. 5", "Rev. 6";
        }
        field(50004;Account;Code[10]) 
        {
            Caption='Account';
        }
        field(50005;Department;Code[10]) 
        {
            Caption='Department';
        }
        field(50006;Date_;Date) 
        {
            Caption='Date';
        }
        field(50007;InvoiceNumber;Text[20]) 
        {
            Caption='Invoice';
        }
        field(50008;Voucher;Integer) 
        {
            Caption='Voucher';
        }
        field(50009;Txt;Text[40]) 
        {
            Caption='Text';
        }
        field(50010;TransType;Option) 
        {
            Caption='Entry type';
            OptionMembers = " ", Invoice, "Credit note", Payment, Interest, Difference, Adjustment, "Cash discount", "Packing slip", Project, "Secondary rounding", "Journal difference", "Reminder fee";
        }
        field(50011;AmountMST;Decimal) 
        {
            Caption='Amount in LCY';
        }
        field(50012;AmountCur;Decimal) 
        {
            Caption='Amount in currency';
        }
        field(50013;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50014;Vat;Code[10]) 
        {
            Caption='VAT';
        }
        field(50015;VatAmount;Decimal) 
        {
            Caption='VAT amount';
        }
        field(50016;Approved;Option) 
        {
            Caption='Approved';
            OptionMembers = No, Yes;
        }
        field(50017;ApprovedBy;Text[10]) 
        {
            Caption='Approved by';
            DataClassification=EndUserIdentifiableInformation;
        }
        field(50018;CashDiscAmount;Decimal) 
        {
            Caption='Cash discount';
        }
        field(50019;CashDiscDate;Date) 
        {
            Caption='Cash disc. date';
        }
        field(50020;DueDate;Date) 
        {
            Caption='Due';
        }
        field(50021;Open;Option) 
        {
            Caption='Open';
            OptionMembers = No, Yes;
        }
        field(50022;ExchRate;Decimal) 
        {
            Caption='Exch. rate';
        }
        field(50023;RESERVED2;Decimal) 
        {
            Caption='RESERVED2';
        }
        field(50024;RESERVED3;Decimal) 
        {
            Caption='RESERVED3';
        }
        field(50025;PostedDiffAmount;Decimal) 
        {
            Caption='Diff. posted';
        }
        field(50026;RefRecID;Integer) 
        {
            Caption='RefRecID';
        }
        field(50027;Transaction;Integer) 
        {
            Caption='Transaction';
        }
        field(50028;ReminderCode;Option) 
        {
            Caption='Reminder code';
            OptionMembers = " ", "Reminder 1", "Reminder 2", "Reminder 3", "Reminder 4", Collection;
        }
        field(50029;CashDisc;Text[10]) 
        {
            Caption='Cash discount';
        }
        field(50030;RemindedDate;Date) 
        {
            Caption='Reminder date';
        }
        field(50031;ExchRateTri;Decimal) 
        {
            Caption='Tri rate';
        }
        field(50032;PaymentId;Text[30]) 
        {
            Caption='Payment ID';
        }
        field(50033;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50034;Purpose;Code[10]) 
        {
            Caption='Purpose';
        }
        field(50035;PaymentMode;Text[10]) 
        {
            Caption='Paym. method';
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

