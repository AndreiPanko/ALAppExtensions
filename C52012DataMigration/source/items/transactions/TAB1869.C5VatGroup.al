﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51869 "C5 VatGroup"
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
        field(50003;Type;Option) 
        {
            Caption='Type';
            OptionMembers = Inventory, Customer, Vendor;
        }
        field(50004;Group;Code[10]) 
        {
            Caption='VAT group';
        }
        field(50005;Description;Text[30]) 
        {
            Caption='Description';
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

