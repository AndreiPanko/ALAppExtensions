// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51880 "C5 InvenPriceGroup"
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
        field(50003;Group;Code[10]) 
        {
            Caption='Group';
        }
        field(50004;GroupName;Text[30]) 
        {
            Caption='Group name';
        }
        field(50005;InclVat;Option) 
        {
            Caption='Incl. VAT';
            OptionMembers = No, Yes;
        }
        field(50006;Roundoff1;Decimal) 
        {
            Caption='Round 1';
        }
        field(50007;Roundoff10;Decimal) 
        {
            Caption='Round 10';
        }
        field(50008;Roundoff100;Decimal) 
        {
            Caption='Round 100';
        }
        field(50009;Roundoff1000;Decimal) 
        {
            Caption='Round 1000';
        }
        field(50010;Roundoff1000Plus;Decimal) 
        {
            Caption='Round 1000 Plus';
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

