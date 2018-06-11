// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51863 "C5 LedTable"
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
        field(50003;DEL_UserLock;Integer) 
        {
            Caption='Lock';
        }
        field(50004;Account;Code[10]) 
        {
            Caption='Account';
        }
        field(50005;AccountName;Text[40]) 
        {
            Caption='Account name';
        }
        field(50006;AccountType;Option) 
        {
            Caption='A/c type';
            OptionMembers = "P/L a/c", "Balance a/c", Heading, "New page", Empty, "Heading total", "Counter total";
        }
        field(50007;Code;Text[10]) 
        {
            Caption='Code';
        }
        field(50008;DCproposal;Option) 
        {
            Caption='DC proposal';
            OptionMembers = " ", Debit, Credit;
        }
        field(50009;Department;Code[10]) 
        {
            Caption='Department';
        }
        field(50010;MandDepartment;Option) 
        {
            Caption='Mandatory department';
            OptionMembers = No, Yes;
        }
        field(50011;OffsetAccount;Text[10]) 
        {
            Caption='Offset a/c';
        }
        field(50012;Access;Option) 
        {
            Caption='Access';
            OptionMembers = Open, Locked, System;
        }
        field(50013;TotalFromAccount;Text[10]) 
        {
            Caption='Total from';
        }
        field(50014;Vat;Code[10]) 
        {
            Caption='VAT';
        }
        field(50015;BalanceCur;Decimal) 
        {
            Caption='Balance currency';
        }
        field(50016;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50017;CostType;Text[10]) 
        {
            Caption='Cost type';
        }
        field(50018;Counterunit;Text[250]) 
        {
            Caption='Counter total';
        }
        // We ignore this field, since we're not importing images
        field(50019;ImageFile;Text[250]) 
        {
            Caption='Image';
        }
        field(50020;BalanceMST;Decimal) 
        {
            Caption='Balance in LCY';
        }
        field(50021;TmpNumerals05;Decimal) 
        {
            Caption='TmpNum05';
        }
        field(50022;TmpNumerals06;Decimal) 
        {
            Caption='TmpNum06';
        }
        field(50023;TmpNumerals07;Decimal) 
        {
            Caption='TmpNum07';
        }
        field(50024;TmpNumerals08;Decimal) 
        {
            Caption='TmpNum08';
        }
        field(50025;TmpNumerals09;Decimal) 
        {
            Caption='TmpNum09';
        }
        field(50026;TmpNumerals10;Decimal) 
        {
            Caption='TmpNum10';
        }
        field(50027;TmpNumerals11;Decimal) 
        {
            Caption='TmpNum11';
        }
        field(50028;TmpNumerals12;Decimal) 
        {
            Caption='TmpNum12';
        }
        field(50029;TmpNumerals13;Decimal) 
        {
            Caption='TmpNum13';
        }
        field(50030;CompanyGroupAcc;Text[10]) 
        {
            Caption='Corporate a/c';
        }
        field(50031;ExchAdjust;Option) 
        {
            Caption='Exch. adjustment';
            OptionMembers = No, Yes;
        }
        field(50032;Balance02;Decimal) 
        {
            Caption='Balance in';
        }
        field(50033;EDIIndex;Text[10]) 
        {
            Caption='EDI index';
        }
        field(50034;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50035;MandCentre;Option) 
        {
            Caption='Mandatory cost centre';
            OptionMembers = No, Yes;
        }
        field(50036;Purpose;Code[10]) 
        {
            Caption='Purpose';
        }
        field(50037;MandPurpose;Option) 
        {
            Caption='Mandatory purpose';
            OptionMembers = No, Yes;
        }
        field(50038;VatBlocked;Option) 
        {
            Caption='VAT locked';
            OptionMembers = No, Yes;
        }
        field(50039;OpeningAccount;Text[10]) 
        {
            Caption='Opening account';
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