// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51890 "C5 InvenTrans"
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
        field(50003;ItemNumber;Text[20]) 
        {
            Caption='Item number';
        }
        field(50004;BudgetCode;Option) 
        {
            Caption='Budget code';
            OptionMembers = Actual, Budget, "Rev. 1", "Rev. 2", "Rev. 3", "Rev. 4", "Rev. 5", "Rev. 6";
        }
        field(50005;InvenLocation;Text[10]) 
        {
            Caption='Location';
        }
        field(50006;Date_;Date) 
        {
            Caption='Date';
        }
        field(50007;Qty;Decimal) 
        {
            Caption='Qty';
        }
        field(50008;DutyAmount;Decimal) 
        {
            Caption='Duty amount';
        }
        field(50009;Discount;Decimal) 
        {
            Caption='Discount';
        }
        field(50010;AmountMST;Decimal) 
        {
            Caption='Amount in LCY';
        }
        field(50011;AmountCur;Decimal) 
        {
            Caption='Amount in currency';
        }
        field(50012;Currency;Code[3]) 
        {
            Caption='Currency';
        }
        field(50013;Voucher;Integer) 
        {
            Caption='Voucher';
        }
        field(50014;InvoiceNumber;Text[20]) 
        {
            Caption='Invoice';
        }
        field(50015;Module;Option) 
        {
            Caption='Module';
            OptionMembers = System, GenLedger, Customer, Vendor, Inventory, Sales, Purchase, Project, General, eOrder, Payroll, "Payroll setup";
        }
        field(50016;Number;Text[10]) 
        {
            Caption='Number';
        }
        field(50017;Account;Text[10]) 
        {
            Caption='Account';
        }
        field(50018;Department;Code[10]) 
        {
            Caption='Department';
        }
        field(50019;Employee;Text[10]) 
        {
            Caption='Employee';
        }
        field(50020;Txt;Text[40]) 
        {
            Caption='Text';
        }
        field(50021;InOutflow;Option) 
        {
            Caption='Movement';
            OptionMembers = " ", "Inven. inflow", "Inven. outflow";
        }
        field(50022;CostAmount;Decimal) 
        {
            Caption='Cost value in LCY';
        }
        field(50023;SerialNumber;Code[20]) 
        {
            Caption='Serial/Batch number';
        }
        field(50024;SettledQty;Decimal) 
        {
            Caption='Settled qty';
        }
        field(50025;SettledAmount;Decimal) 
        {
            Caption='Settled amount';
        }
        field(50026;InvestTax;Decimal) 
        {
            Caption='Invest. duty';
        }
        field(50027;PostedDiffAmount;Decimal) 
        {
            Caption='Adjustment';
        }
        field(50028;Open;Option) 
        {
            Caption='Open';
            OptionMembers = No, Yes;
        }
        field(50029;InvenTransType;Option) 
        {
            Caption='Entry type';
            OptionMembers = Adjustment, "Item purchase", "Item sale", "BOM line", BOM, Project, Transfer;
        }
        field(50030;RefRecId;Integer) 
        {
            Caption='EntryRef';
        }
        field(50031;Transaction;Integer) 
        {
            Caption='Transaction';
        }
        field(50032;InvenStatus;Option) 
        {
            Caption='Status';
            OptionMembers = Invoice, "Packing slip", "On order", "Pro forma", Confirmation, Quotation, "Sub order";
        }
        field(50033;PackingSlip;Text[20]) 
        {
            Caption='Packing slip';
        }
        field(50034;InvenItemGroup;Code[10]) 
        {
            Caption='Item group';
        }
        field(50035;CustVendGroup;Code[10]) 
        {
            Caption='Cust./Vend. Group';
        }
        field(50036;DiscAmount;Decimal) 
        {
            Caption='Disc. amount';
        }
        field(50037;LedgerAccount;Text[10]) 
        {
            Caption='G/L account';
        }
        field(50038;CostType;Text[10]) 
        {
            Caption='Cost type';
        }
        field(50039;CommissionAmount;Decimal) 
        {
            Caption='Commission amount';
        }
        field(50040;CommissionSettled;Option) 
        {
            Caption='Commission settled';
            OptionMembers = No, Yes;
        }
        field(50041;Vat;Code[10]) 
        {
            Caption='VAT';
        }
        field(50042;ProjCostPLPosted;Decimal) 
        {
            Caption='P/L posted in project';
        }
        field(50043;ProjCostPLAcc;Text[10]) 
        {
            Caption='Cost P/L a/c';
        }
        field(50044;COGSAccount;Text[10]) 
        {
            Caption='COGS account';
        }
        field(50045;InventoryAcc;Text[10]) 
        {
            Caption='Inventory a/c';
        }
        field(50046;ProfitLossAmount;Decimal) 
        {
            Caption='Loss/Profit';
        }
        field(50047;DEL_DutyCode;Text[10]) 
        {
            Caption='DELETEDuty';
        }
        field(50048;ExchRate;Decimal) 
        {
            Caption='Exch. rate';
        }
        field(50049;ExchRateTri;Decimal) 
        {
            Caption='Tri rate';
        }
        field(50050;DELETED;Decimal) 
        {
            Caption='Deleted';
        }
        field(50051;Centre;Code[10]) 
        {
            Caption='Cost centre';
        }
        field(50052;Purpose;Code[10]) 
        {
            Caption='Purpose';
        }
        field(50053;LineNumber;Decimal) 
        {
            Caption='Orig linenumber';
        }
        field(50054;ReversedQty;Decimal) 
        {
            Caption='Reversed quantity';
        }
        field(50055;ReversedAmount;Decimal) 
        {
            Caption='Reversed amount';
        }
        field(50056;TmpFunction;Integer) 
        {
            Caption='Tmp function';
        }
        field(50057;CollectNumber;Text[10]) 
        {
            Caption='Collective number';
        }
        field(50058;SkipSettle;Option) 
        {
            Caption='Exclude from settlement';
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

