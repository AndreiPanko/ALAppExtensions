﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51865 "C5 Department"
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
        field(50003;Department;Code[10]) 
        {
            Caption='Department';
        }
        field(50004;Name;Text[30]) 
        {
            Caption='Name';
        }
        field(50005;C4Department;Integer) 
        {
            Caption='C4 dept.';
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

