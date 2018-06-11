// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51895 "C5 ExchRate"
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
        field(50003;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50004;ExchRate;Decimal) 
        {
            Caption='Exch. rate';
        }
        field(50005;FromDate;Date) 
        {
            Caption='From date';
        }
        field(50006;Comment;Text[50]) 
        {
            Caption='Comment';
        }
        field(50007;Triangulation;Option) 
        {
            Caption='Triangulation';
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

