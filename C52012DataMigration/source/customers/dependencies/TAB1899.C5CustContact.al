// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51899 "C5 CustContact"
{
    fields
    {
        field(50001;RecId;Integer) 
        {
            AutoIncrement=true;
        }
        field(50002;LastChanged;Date) {  }
        field(50003;Account;Code[10])
        {
            TableRelation=Customer;
            ValidateTableRelation=false;
        }
        field(50004;PrimaryContact;Option) { OptionMembers = No, Yes; }
        field(50005;Name;Text[50]) {  }
        field(50006;Position;Text[10]) {  }
        field(50007;Address1;Text[50]) {  }
        field(50008;Address2;Text[50]) {  }
        field(50009;ZipCity;Text[50]) {  }
        field(50010;Country;Text[30]) {  }
        field(50011;Email;Text[80]) {  }
        field(50012;Phone;Text[20]) {  }
        field(50013;Fax;Text[20]) {  }
        field(50014;LocalNumber;Text[20]) {  }
        field(50015;CellPhone;Text[20]) {  }
    }

    keys
    {
        key(PK;RecId)
        {
            Clustered = true;
        }
    }
}

