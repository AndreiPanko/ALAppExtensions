// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51867 "C5 InvenItemGroup"
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
        field(50003;Group;Code[10]) 
        {
            Caption='Group';
        }
        field(50004;GroupName;Text[30]) 
        {
            Caption='Group name';
        }
        field(50005;SalesAcc;Text[10]) 
        {
            Caption='Sales a/c';
        }
        field(50006;COGSAcc;Text[10]) 
        {
            Caption='COGS a/c';
        }
        field(50007;SalesDiscAcc;Text[10]) 
        {
            Caption='LineDiscSales';
        }
        field(50008;InventoryInflowAcc;Text[10]) 
        {
            Caption='Inven. inflow';
        }
        field(50009;InventoryOutflowAcc;Text[10]) 
        {
            Caption='Inven. outflow';
        }
        field(50010;LossAcc;Text[10]) 
        {
            Caption='Loss';
        }
        field(50011;ProfitAcc;Text[10]) 
        {
            Caption='Profit';
        }
        field(50012;InterimInflowOffset;Text[10]) 
        {
            Caption='Int. off. inflow a/c';
        }
        field(50013;InterimOutflowOffset;Text[10]) 
        {
            Caption='Int. off. outflow a/c';
        }
        field(50014;ProfitMarginPct;Decimal) 
        {
            Caption='Profit margin';
        }
        field(50015;InterimInflowAcc;Text[10]) 
        {
            Caption='Interim inflow';
        }
        field(50016;InterimOutflowAcc;Text[10]) 
        {
            Caption='Interim outflow';
        }
        field(50017;PurchDiscAcc;Text[10]) 
        {
            Caption='LineDiscPurchase';
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

