// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51885 "C5 InvenCustDisc"
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
        field(50003;ItemCode;Option) 
        {
            Caption='Item code';
            OptionMembers = Specific, Group, All;
        }
        field(50004;AccountCode;Option) 
        {
            Caption='Account code';
            OptionMembers = Specific, Group, All;
        }
        field(50005;ItemRelation;Code[20]) 
        {
            Caption='Item relation';
        }
        field(50006;RESERVED1;Text[10]) 
        {
            Caption='RESERVED1';
        }
        field(50007;AccountRelation;Code[10]) 
        {
            Caption='A/c relation';
        }
        field(50008;RESERVED2;Text[10]) 
        {
            Caption='RESERVED2';
        }
        field(50009;Type;Option) 
        {
            Caption='Type';
            OptionMembers = Percent, Amount, Price;
        }
        field(50010;Qty;Decimal) 
        {
            Caption='Qty';
        }
        field(50011;FromDate;Date) 
        {
            Caption='From date';
        }
        field(50012;ToDate;Date) 
        {
            Caption='To date';
        }
        field(50013;Rate_;Decimal) 
        {
            Caption='Rate';
        }
        field(50014;SearchAgain;Option) 
        {
            Caption='Search';
            OptionMembers = No, Yes;
        }
        field(50015;SearchSimilar;Option) 
        {
            Caption='Same';
            OptionMembers = No, Yes;
        }
        field(50016;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50017;PriceUnit;Decimal) 
        {
            Caption='Price unit';
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

