// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51862 "C5 InvenTable"
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
        field(50004;ItemNumber;Code[20]) 
        {
            Caption='Item number';
        }
        field(50005;ItemName1;Text[40]) 
        {
            Caption='Item name';
        }
        field(50006;ItemName2;Text[40]) 
        {
            Caption='Suppl. item name 1';
        }
        field(50007;ItemName3;Text[40]) 
        {
            Caption='Suppl. item name 2';
        }
        field(50008;ItemType;Option) 
        {
            Caption='Item type';
            OptionMembers=Item,Service,BOM,Kit;
        }
        field(50009;DiscGroup;Code[10]) 
        {
            Caption='Discount group';
        }
        field(50010;CostCurrency;Code[3]) 
        {
            Caption='Cost currency';
        }
        field(50011;CostPrice;Decimal) 
        {
            Caption='Cost price';
        }
        field(50012;Group;Code[10]) 
        {
            Caption='Group';
        }
        field(50013;SalesModel;Option) 
        {
            Caption='Sales model';
            OptionMembers="No change","Last sale",Adjust;
        }
        field(50014;CostingMethod;Option) 
        {
            Caption='Inven. model';
            OptionMembers=FIFO,LIFO,"Cost price",Average,"Serial number";
        }
        field(50015;PurchSeriesSize;Decimal) 
        {
            Caption='Purch. qty';
        }
        field(50016;PrimaryVendor;Code[10]) 
        {
            Caption='Primary Vendor';
        }
        field(50017;VendItemNumber;Text[20]) 
        {
            Caption='Vendor item no.';
        }
        field(50018;Blocked;Option) 
        {
            Caption='Locked';
            OptionMembers=No,Yes;
        }
        field(50019;Alternative;Option) 
        {
            Caption='Alternative';
            OptionMembers=Never,"Not available",Always;
        }
        field(50020;AltItemNumber;Code[20]) 
        {
            Caption='Alt. item';
        }
        field(50021;Decimals_;Integer) 
        {
            Caption='Decimals';
        }
        field(50022;DEL_SalesDuty;Text[10]) 
        {
            Caption='DELETESalesDuty';
        }
        field(50023;Commission;Option) 
        {
            Caption='Commission';
            OptionMembers=No,Yes;
        }
        field(50024;ImageFile;Text[250]) 
        {
            Caption='Image';
        }
        field(50025;NetWeight;Decimal) 
        {
            Caption='Net weight';
        }
        field(50026;Volume;Decimal) 
        {
            Caption='Volume';
        }
        field(50027;TariffNumber;Code[20]) 
        {
            Caption='Item CN8 codes';
        }
        field(50028;UnitCode;Code[10]) 
        {
            Caption='Unit';
        }
        field(50029;OneTimeItem;Option) 
        {
            Caption='One-off item';
            OptionMembers=No,Yes;
        }
        field(50030;CostType;Text[10]) 
        {
            Caption='Cost type';
        }
        field(50031;ExtraCost;Decimal) 
        {
            Caption='Misc. charges';
        }
        field(50032;PurchCostModel;Option) 
        {
            Caption='Purch. cost model';
            OptionMembers="No change","Last purchase",Average;
        }
        field(50033;MainLocation;Text[10]) 
        {
            Caption='Main inventory';
        }
        field(50034;InvenLocation;Option) 
        {
            Caption='Location';
            OptionMembers=No,Yes;
        }
        field(50035;PurchVat;Code[10]) 
        {
            Caption='Purch. VAT';
        }
        field(50036;RESERVED2;Text[10]) 
        {
            Caption='RESERVED2';
        }
        field(50037;Inventory;Decimal) 
        {
            Caption='Inventory';
        }
        field(50038;Delivered;Decimal) 
        {
            Caption='Delivered';
        }
        field(50039;Reserved;Decimal) 
        {
            Caption='Reserved';
        }
        field(50040;Received;Decimal) 
        {
            Caption='Received';
        }
        field(50041;Ordered;Decimal) 
        {
            Caption='Ordered';
        }
        field(50042;InventoryValue;Decimal) 
        {
            Caption='Inventory value in LCY';
        }
        field(50043;DeliveredValue;Decimal) 
        {
            Caption='Value delivered in LCY';
        }
        field(50044;ReceivedValue;Decimal) 
        {
            Caption='Value received in LCY';
        }
        field(50045;Department;Code[10]) 
        {
            Caption='Department';
        }
        field(50046;CostPriceUnit;Decimal) 
        {
            Caption='Cost price unit';
        }
        field(50047;DEL_PurchDuty;Text[10]) 
        {
            Caption='DELETEPurchDuty';
        }
        field(50048;Level;Integer) 
        {
            Caption='Level';
        }
        field(50049;Pulled;Decimal) 
        {
            Caption='Pulled';
        }
        field(50050;WarnNegativeInventory;Option) 
        {
            Caption='Warning';
            OptionMembers=No,Yes;
        }
        field(50051;NegativeInventory;Option) 
        {
            Caption='Negative';
            OptionMembers=No,Yes;
        }
        field(50052;IgnoreListCode;Option) 
        {
            Caption='-Lst';
            OptionMembers=No,Yes;
        }
        field(50053;PayCType;Text[10]) 
        {
            Caption='Payroll CT';
        }
        field(50054;ItemTracking;Option) 
        {
            Caption='Item tracking';
            OptionMembers=None,Batch,"Serial number";
        }
        field(50055;ItemTrackGroup;Text[10]) 
        {
            Caption='Tracking group';
        }
        field(50056;ProjCostFactor;Decimal) 
        {
            Caption='Proj. factor';
        }
        field(50057;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50058;Purpose;Code[10]) 
        {
            Caption='Purpose';
        }
        field(50059;SupplFactor;Decimal) 
        {
            Caption='Suppl. factor';
        }
        field(50060;SupplementaryUnits;Text[13]) 
        {
            Caption='Supplementary unit';
        }
        field(50061;MarkedPhysical;Decimal) 
        {
            Caption='Mrk. physical';
        }
        field(50062;LastMovementDate;Date) 
        {
            Caption='Latest movement';
        }
        field(50063;VatGroup;Code[10]) 
        {
            Caption='VAT group';
        }
        field(50064;StdItemNumber;Option) 
        {
            Caption='Default';
            OptionMembers=No,Yes;
        }
    }

    keys
    {
        key(PK;RecId)
        {
            Clustered=true;
        }
    }
}

