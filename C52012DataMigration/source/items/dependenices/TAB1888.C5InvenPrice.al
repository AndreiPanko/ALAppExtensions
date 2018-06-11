// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51888 "C5 InvenPrice"
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
        field(50003;ItemNumber;Code[20]) 
        {
            Caption='Item number';
        }
        field(50004;Price;Decimal) 
        {
            Caption='Price';
        }
        field(50005;PriceUnit;Decimal) 
        {
            Caption='Unit';
        }
        field(50006;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50007;PriceGroup;Code[10]) 
        {
            Caption='Price group';
        }
        field(50008;ContributionRatio;Decimal) 
        {
            Caption='Contrib. ratio';
        }
        field(50009;Date_;Date) 
        {
            Caption='Date';
        }
        field(50010;SalesVat;Code[10]) 
        {
            Caption='Sales VAT';
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

