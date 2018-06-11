// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51894 "C5 VendTrans"
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
        field(50007;Voucher;Integer) 
        {
            Caption='Voucher';
        }
        field(50008;Txt;Text[40]) 
        {
            Caption='Text';
        }
        field(50009;TransType;Option) 
        {
            Caption='Entry type';
            OptionMembers = " ", Invoice, "Credit note", Payment, Interest, Difference, Adjustment, "Cash discount", "Packing slip", Project, "Secondary rounding", "Journal difference", "Reminder fee";
        }
        field(50010;AmountMST;Decimal) 
        {
            Caption='Amount in LCY';
        }
        field(50011;AmountCur;Decimal) 
        {
            Caption='Amount in currency';
        }
        field(50012;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50013;Vat;Code[10]) 
        {
            Caption='VAT';
        }
        field(50014;VatAmount;Decimal) 
        {
            Caption='VAT amount';
        }
        field(50015;Approved;Option) 
        {
            Caption='Approved';
            OptionMembers = No, Yes;
        }
        field(50016;ApprovedBy;Text[10]) 
        {
            Caption='Approved by';
            DataClassification=EndUserIdentifiableInformation;
        }
        field(50017;CashDiscAmount;Decimal) 
        {
            Caption='Cash discount';
        }
        field(50018;CashDiscDate;Date) 
        {
            Caption='Cash disc. date';
        }
        field(50019;DueDate;Date) 
        {
            Caption='Due';
        }
        field(50020;Open;Option) 
        {
            Caption='Open';
            OptionMembers = No, Yes;
        }
        field(50021;ExchRate;Decimal) 
        {
            Caption='Exch. rate';
        }
        field(50022;RESERVED3;Decimal) 
        {
            Caption='RESERVED3';
        }
        field(50023;RESERVED4;Decimal) 
        {
            Caption='RESERVED4';
        }
        field(50024;PostedDiffAmount;Decimal) 
        {
            Caption='Diff. posted';
        }
        field(50025;InvoiceNumber;Text[20]) 
        {
            Caption='Invoice';
        }
        field(50026;RESERVED1;Option) 
        {
            Caption='RESERVED1';
            OptionMembers = Cost, Invoice, "On account invoice";
        }
        field(50027;RefRecId;Integer) 
        {
            Caption='RefRecID';
        }
        field(50028;Transaction;Integer) 
        {
            Caption='Transaction';
        }
        field(50029;RESERVED6;Option) 
        {
            Caption='RESERVED6';
            OptionMembers = No, Yes;
        }
        field(50030;PaymId;Text[20]) 
        {
            Caption='Identification';
        }
        field(50031;ProcessingDate;Date) 
        {
            Caption='Processing date';
        }
        field(50032;CashDisc;Text[10]) 
        {
            Caption='Cash discount';
        }
        field(50033;PaymentMode;Text[10]) 
        {
            Caption='Paym. method';
        }
        field(50034;PaymSpec;Text[10]) 
        {
            Caption='Paym. spec.';
        }
        field(50035;ExchRateTri;Decimal) 
        {
            Caption='Tri rate';
        }
        field(50036;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50037;Purpose;Code[10]) 
        {
            Caption='Purpose';
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

