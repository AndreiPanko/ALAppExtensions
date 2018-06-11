﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51883 "C5 CustDiscGroup"
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
        field(50003;DiscGroup;Code[10]) 
        {
            Caption='Discount group';
        }
        field(50004;Comment;Text[30]) 
        {
            Caption='Comment';
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

