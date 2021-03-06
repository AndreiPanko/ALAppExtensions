﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51891 "C5 CustGroup"
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
            Caption='Customer group';
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
        field(50007;InvoiceDisc;Text[10]) 
        {
            Caption='Invoice disc.';
        }
        field(50008;FeeTaxable;Text[10]) 
        {
            Caption='Fee taxable';
        }
        field(50009;FeeTaxfree;Text[10]) 
        {
            Caption='Fee tax free';
        }
        field(50010;GroupAccount;Text[10]) 
        {
            Caption='Group a/c';
        }
        field(50011;CashPayment;Text[10]) 
        {
            Caption='Cash payment';
        }
        field(50012;LineDisc;Text[10]) 
        {
            Caption='Line disc.';
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

