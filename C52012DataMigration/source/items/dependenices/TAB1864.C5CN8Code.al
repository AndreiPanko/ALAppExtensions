// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51864 "C5 CN8Code"
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
        field(50003;CN8Code;Code[10]) 
        {
            Caption='Item CN8 codes';
        }
        field(50004;Txt;Text[30]) 
        {
            Caption='Text';
        }
        field(50005;SupplementaryUnits;Text[13]) 
        {
            Caption='Supplementary unit';
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

