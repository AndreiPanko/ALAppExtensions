﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

xmlport 51869 "C5 InvenDiscGroup"
{
    Direction=Import;
    Format=VariableText;
    FormatEvaluate=XML;


    schema
    {
        textelement(root)
        {
            MinOccurs=Zero;
            XmlName='InvenDiscGroupDocument';
            tableelement(C5InvenDiscGroup; "C5 InvenDiscGroup")
            {
                fieldelement(DiscGroup; C5InvenDiscGroup.DiscGroup) { }
                fieldelement(Comment; C5InvenDiscGroup.Comment) { }
           }
       }
    }
}

