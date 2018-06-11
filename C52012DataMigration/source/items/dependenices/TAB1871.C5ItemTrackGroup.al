// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51871 "C5 ItemTrackGroup"
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
        field(50004;Prefix;Text[10]) 
        {
            Caption='Prefix';
        }
        field(50005;NumberSeries;Text[20]) 
        {
            Caption='Voucher series';
        }
        field(50006;PostFix;Text[10]) 
        {
            Caption='Postfix';
        }
        field(50007;BOMUpdate;Option) 
        {
            Caption='Update BOM';
            OptionMembers = No, Yes;
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

