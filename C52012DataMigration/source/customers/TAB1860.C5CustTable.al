// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51860 "C5 CustTable"
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
            Caption='Account';
            TableRelation=Customer;
            ValidateTableRelation=false;
        }
        field(50005;Name;Text[50]) 
        {
            Caption='Name';
        }
        field(50006;Address1;Text[50]) 
        {
            Caption='Address 1';
        }
        field(50007;Address2;Text[50]) 
        {
            Caption='Address 2';
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
        field(50013;InvoiceAccount;Code[10]) 
        {
            Caption='Invoice a/c';
        }
        field(50014;Group;Code[10]) 
        {
            Caption='Group';
        }
        field(50015;FixedDiscPct;Decimal) 
        {
            Caption='Fixed discount pct.';
        }
        field(50016;Approved;Option) 
        {
            Caption='Approved';
            OptionMembers = No, Yes;
        }
        field(50017;PriceGroup;Code[10]) 
        {
            Caption='Price group';
        }
        field(50018;DiscGroup;Code[10]) 
        {
            Caption='Discount group';
        }
        field(50019;CashDisc;Code[10]) 
        {
            Caption='Cash discount';
        }
        field(50020;ImageFile;Text[250]) 
        {
            Caption='Image';
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
        field(50025;Blocked;Option) 
        {
            Caption='Locked';
            OptionMembers = No, Invoicing, Delivery, Yes;
        }
        field(50026;SalesRep;Code[10]) 
        {
            Caption='Sales rep.';
        }
        field(50027;Vat;Code[10]) 
        {
            Caption='VAT';
        }
        field(50028;DEL_StatType;Option) 
        {
            Caption='DELETEStatistics';
            OptionMembers = "Ordinary trade", Samples, "Trade-in deal", "Financial leasing", Returns, Replacement, "Replace non-returns", EU, Authorities, Private, "Production on toll", Repair, "Repair (free of charge)", Leasing, "EU projects", "Building materials", "Misc.";
        }
        field(50029;GiroNumber;Text[20]) 
        {
            Caption='FIK/Giro';
        }
        field(50030;VatNumber;Text[25]) 
        {
            Caption='VAT No.';
        }
        field(50031;Interest;Text[10]) 
        {
            Caption='Interest';
        }
        field(50032;Department;Code[10]) 
        {
            Caption='Department';
        }
        field(50033;ReminderCode;Option) 
        {
            Caption='Max. reminder';
            OptionMembers = " ", "Reminder 1", "Reminder 2", "Reminder 3", "Reminder 4", Collection;
        }
        field(50034;OnetimeCustomer;Option) 
        {
            Caption='One-off customer';
            OptionMembers = No, Yes;
        }
        field(50035;Inventory;Option) 
        {
            Caption='Inventory';
            OptionMembers = "No change", Reserve, "Pull items", "Fixed order";
        }
        field(50036;EDIAddress;Text[15]) 
        {
            Caption='EDI address';
        }
        field(50037;Balance;Decimal) 
        {
            Caption='Balance';
        }
        field(50038;Balance30;Decimal) 
        {
            Caption='0-30 days';
        }
        field(50039;Balance60;Decimal) 
        {
            Caption='31-60 days';
        }
        field(50040;Balance90;Decimal) 
        {
            Caption='61-90 days';
        }
        field(50041;Balance120;Decimal) 
        {
            Caption='91-120 days';
        }
        field(50042;Balance120Plus;Decimal) 
        {
            Caption='More than 120 days';
        }
        field(50043;AmountDue;Decimal) 
        {
            Caption='Due';
        }
        field(50044;CalculationDate;Date) 
        {
            Caption='Calculated';
        }
        field(50045;BalanceMax;Decimal) 
        {
            Caption='Max. balance';
        }
        field(50046;BalanceMST;Decimal) 
        {
            Caption='Balance LCY';
        }
        field(50047;SearchName;Text[30]) 
        {
            Caption='Search name';
        }
        field(50048;DEL_Transport;Option) 
        {
            Caption='DELETETransport';
            OptionMembers = " ", "Ship/Ferry", Railway, Truck, Air, Entry, Installation, "Own transport";
        }
        field(50049;CashPayment;Option) 
        {
            Caption='Cash payment';
            OptionMembers = No, Yes;
        }
        field(50050;PaymentMode;Text[10]) 
        {
            Caption='Paym. method';
        }
        field(50051;SalesGroup;Code[10]) 
        {
            Caption='Order group';
        }
        field(50052;ProjGroup;Code[10]) 
        {
            Caption='Project group';
        }
        field(50053;TradeCode;Text[10]) 
        {
            Caption='Transact. type';
        }
        field(50054;TransportCode;Text[10]) 
        {
            Caption='Transport';
        }
        field(50055;Email;Text[80]) 
        {
            Caption='Email';
        }
        field(50056;URL;Text[80]) 
        {
            Caption='Homepage';
        }
        field(50057;CellPhone;Text[20]) 
        {
            Caption='Cell phone';
        }
        field(50058;KrakNumber;Text[15]) 
        {
            Caption='Krak no.';
        }
        field(50059;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50060;Purpose;Code[10]) 
        {
            Caption='Purpose';
        }
        field(50061;EanNumber;Text[14]) 
        {
            Caption='EAN';
        }
        field(50062;DimAccountCode;Text[35]) 
        {
            Caption='A/c dimension';
        }
        field(50063;XMLInvoice;Option) 
        {
            Caption='OIOXML';
            OptionMembers = No, Yes;
        }
        field(50064;LastInvoiceDate;Date) 
        {
            Caption='Invoice date';
        }
        field(50065;LastPaymentDate;Date) 
        {
            Caption='Payment';
        }
        field(50066;LastReminderDate;Date) 
        {
            Caption='Reminder';
        }
        field(50067;LastInterestDate;Date) 
        {
            Caption='Last Interest Date';
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
        field(50070;VatGroup;Code[10]) 
        {
            Caption='VAT group';
        }
        field(50071;StdAccount;Option) 
        {
            Caption='Default';
            OptionMembers = No, Yes;
        }
        field(50072;VatNumberType;Text[10]) 
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

