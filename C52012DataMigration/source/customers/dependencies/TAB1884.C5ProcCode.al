// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51884 "C5 ProcCode"
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
            OptionMembers = None, Vendor, Customer;
        }
        field(50004;Code;Code[10]) 
        {
            Caption='Code';
        }
        field(50005;Name;Text[30]) 
        {
            Caption='Name';
        }
        field(50006;Int1;Integer) 
        {
            Caption='Int 1';
        }
        field(50007;Int2;Integer) 
        {
            Caption='Int 2';
        }
        field(50008;Int3;Integer) 
        {
            Caption='Int 3';
        }
        field(50009;Int4;Integer) 
        {
            Caption='Int 4';
        }
        field(50010;NoYes1;Option) 
        {
            Caption='NoYes1';
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

