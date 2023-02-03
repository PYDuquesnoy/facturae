/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.InvoiceIssueDataType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.CurrencyCodeType, Facturae.v32.LanguageCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "InvoiceIssueDataType";

Parameter XMLSEQUENCE = 1;

/// Fecha de expedición. Fecha en la que se genera la factura con efectos fiscales. ISO 8601:2004. Esta fecha no podrá ser posterior a la fecha de la firma electrónica.
Property IssueDate As %Date(XMLNAME = "IssueDate") [ Required ];

/// Fecha de Operación. Fecha en la que se realiza el servicio o se entrega el bien. ISO 8601:2004. Esta fecha solo será obligatoria si es distinta de la fecha de expedición.
Property OperationDate As %Date(XMLNAME = "OperationDate");

/// Lugar de expedición. Plaza en la que se expide el documento.
Property PlaceOfIssue As Facturae.v32.PlaceOfIssueType(XMLNAME = "PlaceOfIssue");

/// Periodo de facturación. Sólo cuando se requiera: Servicio prestado temporalmente o Factura Recapitulativa. Esta información será obligatoria cuando el dato InvoiceClass (Clase) contenga alguno de los valores: "OC" ó "CC". ISO 8601:2004.
Property InvoicingPeriod As Facturae.v32.PeriodDates(XMLNAME = "InvoicingPeriod");

/// Moneda de la operación. Código ISO 4217:2001 Alpha-3 de la moneda en la que se emite la factura. Si la moneda de la operación difiere de la moneda del impuesto (EURO), los campos del contravalor ExchangeRate y ExchangeRateDate deberán cumplimentarse, en cumplimiento del Artº 10.1 del Reglamento sobre facturación. RD 1496/2003 de 28 de Noviembre.
Property InvoiceCurrencyCode As Facturae.v32.CurrencyCodeType(XMLNAME = "InvoiceCurrencyCode") [ Required ];

/// Detalles del tipo de cambio.
Property ExchangeRateDetails As Facturae.v32.ExchangeRateDetailsType(XMLNAME = "ExchangeRateDetails");

/// Moneda del Impuesto. Código ISO 4217:2001 Alpha-3 de la moneda en la que se liquida el impuesto. Siempre en Euros.
Property TaxCurrencyCode As Facturae.v32.CurrencyCodeType(XMLNAME = "TaxCurrencyCode") [ Required ];

/// Lengua. Código ISO 639-1:2002 Alpha-2 de la lengua en la que se emite el documento.
Property LanguageName As Facturae.v32.LanguageCodeType(XMLNAME = "LanguageName") [ Required ];

Storage Default
{
<Data name="InvoiceIssueDataTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>IssueDate</Value>
</Value>
<Value name="3">
<Value>OperationDate</Value>
</Value>
<Value name="4">
<Value>PlaceOfIssue</Value>
</Value>
<Value name="5">
<Value>InvoicingPeriod</Value>
</Value>
<Value name="6">
<Value>InvoiceCurrencyCode</Value>
</Value>
<Value name="7">
<Value>ExchangeRateDetails</Value>
</Value>
<Value name="8">
<Value>TaxCurrencyCode</Value>
</Value>
<Value name="9">
<Value>LanguageName</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.InvoiceIssuDE09D</DataLocation>
<DefaultData>InvoiceIssueDataTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.InvoiceIssuDE09D</IdLocation>
<IndexLocation>^Facturae.v32.InvoiceIssuDE09I</IndexLocation>
<StreamLocation>^Facturae.v32.InvoiceIssuDE09S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
