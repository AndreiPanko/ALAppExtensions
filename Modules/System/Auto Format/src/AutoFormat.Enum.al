// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// Formats the appearance of decimal data types.
/// </summary>
enum 59 "Auto Format"
{
    Extensible = true;

    /// <summary>
    /// Ignore the value that AutoFormatExpr passes and use the standard format for decimals instead.
    /// </summary>
    value(0; DefaultFormat) { }

    /// <summary>
    /// Apply a specific format in AutoFormatExpr without additional transformation.
    /// </summary>
    value(11; CustomFormatExpr) { }
        /// <summary>
    /// Apply a Standard format 2 with 4 decimal digits
    /// </summary>
    value(42; Format42) { }

}

