﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

xmlport 51880 "C5 VendDiscGroup"
{
    Direction=Import;
    Format=VariableText;
    FormatEvaluate=XML;


    schema
    {
        textelement(root)
        {
            MinOccurs=Zero;
            XmlName='VendDiscGroupDocument';
            tableelement(C5VendDiscGroup; "C5 VendDiscGroup")
            {
                fieldelement(DiscGroup; C5VendDiscGroup.DiscGroup) { }
                fieldelement(Comment; C5VendDiscGroup.Comment) { }
           }
       }
   }
}

