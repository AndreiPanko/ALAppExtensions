// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51873 "C5 Payment"
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
        field(50003;Payment;Code[10]) 
        {
            Caption='Payment';
        }
        field(50004;Txt;Text[30]) 
        {
            Caption='Text';
        }
        field(50005;Method;Option) 
        {
            Caption='Method';
            OptionMembers = Net, "Cur. month", "Cur. quarter", "Cur. year", "Cur. week";
        }
        field(50006;Qty;Integer) 
        {
            Caption='Qty';
        }
        field(50007;UnitCode;Option) 
        {
            Caption='Unit';
            OptionMembers = Day, Week, Month;
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

