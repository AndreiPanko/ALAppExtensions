// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51886 "C5 Country"
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
        field(50003;Country;Text[30]) 
        {
            Caption='Country/region';
        }
        field(50004;Type;Option) 
        {
            Caption='Type';
            OptionMembers = Domestic, "EU country", "EFTA country", "3. country";
        }
        field(50005;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50006;Language_;Option) 
        {
            Caption='Language';
            OptionMembers = Default, Danish, English, German, French, Italian, Dutch, Icelandic;
        }
        field(50007;PurchVat;Code[10]) 
        {
            Caption='Purch. VAT';
        }
        field(50008;SalesVat;Code[10]) 
        {
            Caption='Sales VAT';
        }
        field(50009;VatCountryCode;Code[2]) 
        {
            Caption='Country code';
        }
        field(50010;IntrastatCode;Code[3]) 
        {
            Caption='Intrastat';
        }
        field(50011;ExtCountryName;Text[50]) 
        {
            Caption='Country name';
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

