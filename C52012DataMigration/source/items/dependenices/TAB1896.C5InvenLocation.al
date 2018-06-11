// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51896 "C5 InvenLocation"
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
        field(50003;InvenLocation;Text[10]) 
        {
            Caption='Location';
        }
        field(50004;Name;Text[30]) 
        {
            Caption='Name';
        }
        field(50005;RESERVED1;Text[10]) 
        {
            Caption='RESERVED1';
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

