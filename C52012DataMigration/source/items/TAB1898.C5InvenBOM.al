// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51898 "C5 InvenBOM"
{
    fields
    {
        field(50001;RecId;Integer) 
        {
            AutoIncrement=true;
        }
        field(50002;LastChanged;Date) {  }
        field(50003;BOMItemNumber;Code[20]) {  }
        field(50004;LineNumber;Decimal) {  }
        field(50005;ItemNumber;Code[20]) {  }
        field(50006;Qty;Decimal) {  }
        field(50007;Position;Text[10]) {  }
        field(50008;LeadTime;Decimal) {  }
        field(50009;Resource;Text[10]) {  }
        field(50010;InvenLocation;Text[10]) {  }
        field(50011;Comment;Text[30]) {  }
        field(50012;PriceGroup;Text[10]) {  }
    }

    keys
    {
        key(PK;RecId)
        {
            Clustered = true;
        }
    }
}

