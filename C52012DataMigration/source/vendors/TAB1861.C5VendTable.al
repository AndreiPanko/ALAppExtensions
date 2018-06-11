// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51861 "C5 VendTable"
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
        field(50003;DEL_UserLock;Integer) 
        {
            Caption='Lock';
        }
        field(50004;Account;Code[10]) 
        {
            TableRelation=Vendor;              
            ValidateTableRelation=false;
            Caption='Account';
        }
        field(50005;Name;Text[50]) 
        {
            Caption='Name';
        }
        field(50006;Address1;Text[50]) 
        {
            Caption='Address';
        }
        field(50007;Address2;Text[50]) 
        {
            Caption='Address';
        }
        field(50008;ZipCity;Text[50]) 
        {
            Caption='Zip code/City';
        }
        field(50009;Country;Text[30]) 
        {
            Caption='Country/region';
        }
        field(50010;Attention;Text[30]) 
        {
            Caption='Attention';
        }
        field(50011;Phone;Text[20]) 
        {
            Caption='Phone';
        }
        field(50012;Fax;Text[20]) 
        {
            Caption='Fax';
        }
        field(50013;InvoiceAccount;Text[10]) 
        {
            Caption='Invoice a/c';
        }
        field(50014;Group;Code[10]) 
        {
            Caption='Group';
        }
        field(50015;FixedDiscPct;Decimal) 
        {
            Caption='Fixed discount';
        }
        field(50016;DiscGroup;Code[10]) 
        {
            Caption='Discount group';
        }
        field(50017;CashDisc;Code[10]) 
        {
            Caption='Cash discount';
        }
        field(50018;Approved;Option) 
        {
            Caption='Approved';
            OptionMembers = No, Yes;
        }
        field(50019;DEL_ExclDuty;Option) 
        {
            Caption='Excl. duty';
            OptionMembers = No, Yes;
        }
        field(50020;InclVat;Option) 
        {
            Caption='Incl. VAT';
            OptionMembers = No, Yes;
        }
        field(50021;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50022;Language_;Option) 
        {
            Caption='Language';
            OptionMembers = Default, Danish, English, German, French, Italian, Dutch, Icelandic;
        }
        field(50023;Payment;Code[10]) 
        {
            Caption='Payment';
        }
        field(50024;Delivery;Code[10]) 
        {
            Caption='Delivery';
        }
        field(50025;Interest;Text[10]) 
        {
            Caption='Interest';
        }
        field(50026;Blocked;Option) 
        {
            Caption='Locked';
            OptionMembers = No, Invoicing, Delivery, Yes;
        }
        field(50027;Purchaser;Code[10]) 
        {
            Caption='Purchaser';
        }
        field(50028;Vat;Code[10]) 
        {
            Caption='VAT';
        }
        field(50029;DEL_StatType;Option) 
        {
            Caption='DELETEStatistics';
            OptionMembers = "Ordinary trade", Samples, "Trade-in deal", "Financial leasing", Returns, Replacement, "Replace non-returns", EU, Authorities, Private, "Production on toll", Repair, "Repair (free of charge)", Leasing, "EU projects", "Building materials", "Misc.";
        }
        field(50030;ESRnumber;Text[10]) 
        {
            Caption='Nets no.';
        }
        field(50031;GiroNumber;Text[20]) 
        {
            Caption='FIK/Giro';
        }
        field(50032;OurAccount;Text[15]) 
        {
            Caption='Our a/c';
        }
        field(50033;BankAccount;Text[15]) 
        {
            Caption='Bank a/c';
        }
        field(50034;VatNumber;Text[25]) 
        {
            Caption='VAT No.';
        }
        field(50035;Department;Code[10]) 
        {
            Caption='Department';
        }
        field(50036;OnetimeSupplier;Option) 
        {
            Caption='One-off vendor';
            OptionMembers = No, Yes;
        }
        field(50037;ImageFile;Text[250]) 
        {
            Caption='Image';
        }
        field(50038;Inventory;Option) 
        {
            Caption='Inventory';
            OptionMembers = "No change", Ordered, Received, "Fixed purchase";
        }
        field(50039;EDIAddress;Text[15]) 
        {
            Caption='EDI address';
        }
        field(50040;Balance;Decimal) 
        {
            Caption='Balance';
        }
        field(50041;Balance30;Decimal) 
        {
            Caption='0-30 days';
        }
        field(50042;Balance60;Decimal) 
        {
            Caption='31-60 days';
        }
        field(50043;Balance90;Decimal) 
        {
            Caption='61-90 days';
        }
        field(50044;Balance120;Decimal) 
        {
            Caption='91-120 days';
        }
        field(50045;Balance120Plus;Decimal) 
        {
            Caption='More than 120 days';
        }
        field(50046;AmountDue;Decimal) 
        {
            Caption='Due';
        }
        field(50047;CalculationDate;Date) 
        {
            Caption='Calculated';
        }
        field(50048;BalanceMax;Decimal) 
        {
            Caption='Max. balance';
        }
        field(50049;BalanceMST;Decimal) 
        {
            Caption='Balance LCY';
        }
        field(50050;SearchName;Text[30]) 
        {
            Caption='Search name';
        }
        field(50051;DEL_Transport;Option) 
        {
            Caption='DELETETransport';
            OptionMembers = " ", "Ship/Ferry", Railway, Truck, Air, Entry, Installation, "Own transport";
        }
        field(50052;CashPayment;Option) 
        {
            Caption='Cash payment';
            OptionMembers = No, Yes;
        }
        field(50053;PaymentMode;Text[10]) 
        {
            Caption='Paym. method';
        }
        field(50054;PaymSpec;Text[10]) 
        {
            Caption='Paym. spec.';
        }
        field(50055;Telex;Text[20]) 
        {
            Caption='Telex';
        }
        field(50056;PaymId;Text[20]) 
        {
            Caption='PaymID';
        }
        field(50057;PurchGroup;Code[10]) 
        {
            Caption='Purchase group';
        }
        field(50058;TradeCode;Text[10]) 
        {
            Caption='Transact. type';
        }
        field(50059;TransportCode;Code[10]) 
        {
            Caption='Transport';
        }
        field(50060;Email;Text[80]) 
        {
            Caption='Email';
        }
        field(50061;URL;Text[80]) 
        {
            Caption='Homepage';
        }
        field(50062;CellPhone;Text[20]) 
        {
            Caption='Cell phone';
        }
        field(50063;KrakNumber;Text[15]) 
        {
            Caption='Krak no.';
        }
        field(50064;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50065;Purpose;Code[10]) 
        {
            Caption='Purpose';
        }
        field(50066;LastInvoiceDate;Date) 
        {
            Caption='Invoice date';
        }
        field(50067;LastPaymentDate;Date) 
        {
            Caption='Payment';
        }
        field(50068;LastInvoiceNumber;Text[20]) 
        {
            Caption='Invoice';
        }
        field(50069;XMLImport;Option) 
        {
            Caption='XML import';
            OptionMembers = No, Yes;
        }
        field(50070;EanNumber;Text[14]) 
        {
            Caption='EAN';
        }
        field(50071;VatGroup;Code[10]) 
        {
            Caption='VAT group';
        }
        field(50072;CardType;Text[2]) 
        {
            Caption='Card type';
        }
        field(50073;StdAccount;Option) 
        {
            Caption='Default';
            OptionMembers = No, Yes;
        }
        field(50074;VatNumberType;Text[10]) 
        {
            Caption='VAT number type';
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

