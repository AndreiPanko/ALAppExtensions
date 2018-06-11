﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51870 "C5 UnitCode"
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
        field(50003;UnitCode;Code[10]) 
        {
            Caption='Unit';
        }
        field(50004;Txt;Text[30]) 
        {
            Caption='Text';
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

