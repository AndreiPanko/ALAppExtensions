// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

table 51887 "C5 Schema Parameters"
{

  fields
  {
    field(50001;Dummy;Code[10])
    {
      Caption='Dummy';
    }
    field(50002;"Zip File"; Text[250])
    {
      Caption='Zip File';
    }
    field(50003;"Unziped Folder"; Text[250])
    {
      Caption='Unziped Folder';
    }
    field(50004;"Total Items";Integer)
    {
      Caption='Total Items';
    }
    field(50005;"Total Accounts";Integer)
    {
      Caption='Total Accounts';
    }
    field(50006;"Total Customers";Integer)
    {
      Caption='Total Customers';
    }
    field(50007;"Total Vendors";Integer)
    {
      Caption='Total Vendors';
    }
    field(50008;"Total Historical Entries";Integer)
    {
      Caption='Total Historical Entries';
    }
    field(50009;"Zip File Blob";Blob)
    {
      Caption='Zip File Blob';
    }
    field(50010;CurrentPeriod;Date)
    {
      Caption='Current Period';
    }
  }

  keys
  {
    key(PK;Dummy)
    {
      Clustered = true;
    }
  }

  procedure GetSingleInstance()
  begin
    Reset();
    if not Get() then begin
      Init();
      Insert();
    end;
  end;
}