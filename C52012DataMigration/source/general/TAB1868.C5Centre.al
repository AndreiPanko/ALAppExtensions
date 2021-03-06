﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51868 "C5 Centre"
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
        field(50003;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50004;Name;Text[30]) 
        {
            Caption='Name';
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

