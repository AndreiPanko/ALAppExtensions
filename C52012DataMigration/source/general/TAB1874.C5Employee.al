// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51874 "C5 Employee"
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
        field(50003;Employee;Code[10]) 
        {
            Caption='Employee';
        }
        field(50004;Name;Text[50]) 
        {
            Caption='Name';
        }
        field(50005;Address1;Text[50]) 
        {
            Caption='Address';
        }
        field(50006;Address2;Text[50]) 
        {
            Caption='Address';
        }
        field(50007;ZipCity;Text[50]) 
        {
            Caption='Zip code/City';
        }
        field(50008;User;Integer) 
        {
            Caption='User';
            DataClassification=EndUserPseudonymousIdentifiers;
        }
        field(50009;Phone;Text[20]) 
        {
            Caption='Phone';
        }
        field(50010;LocalNumber;Text[20]) 
        {
            Caption='Extension';
        }
        field(50011;Department;Text[10]) 
        {
            Caption='Department';
        }
        field(50012;ImageFile;Text[250]) 
        {
            Caption='Image';
        }
        field(50013;EmployeeType;Option) 
        {
            Caption='Employee type';
            OptionMembers = Internal, External, "Sales rep.", "Order taker", Purchaser;
        }
        field(50014;Email;Text[80]) 
        {
            Caption='Email';
        }
        field(50015;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50016;Purpose;Code[10]) 
        {
            Caption='Purpose';
        }
        field(50017;KrakNumber;Text[15]) 
        {
            Caption='Krak no.';
        }
        field(50018;Country;Text[30]) 
        {
            Caption='Country/region';
        }
        field(50019;Currency;Code[3]) 
        {
            Caption='Currency code';
        }
        field(50020;Language_;Option) 
        {
            Caption='Language';
            OptionMembers = Default, Danish, English, German, French, Italian, Dutch, Icelandic;
        }
        field(50021;CellPhone;Text[20]) 
        {
            Caption='Cell phone';
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

