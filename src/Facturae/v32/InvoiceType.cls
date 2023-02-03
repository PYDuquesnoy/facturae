/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.InvoiceType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.TextMax250Type, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "InvoiceType";

Parameter XMLSEQUENCE = 1;

/// Cabecera de factura. Para cada una de las facturas que pueden componer un Lote, recoge datos que determinan inequívocamente cada factura.
Property InvoiceHeader As Facturae.v32.InvoiceHeaderType(XMLNAME = "InvoiceHeader") [ Required ];

/// Datos de la emisión de la factura.
Property InvoiceIssueData As Facturae.v32.InvoiceIssueDataType(XMLNAME = "InvoiceIssueData") [ Required ];

/// Impuestos repercutidos.
/// Impuesto.
Relationship TaxesOutputs As Facturae.v32.TaxOutputType(XMLITEMNAME = "Tax", XMLNAME = "TaxesOutputs", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceType ];

/// Impuestos retenidos.
/// Impuesto.
Relationship TaxesWithheld As Facturae.v32.TaxType(XMLITEMNAME = "Tax", XMLNAME = "TaxesWithheld", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceType1 ];

/// Totales de factura.
Property InvoiceTotals As Facturae.v32.InvoiceTotalsType(XMLNAME = "InvoiceTotals") [ Required ];

/// Información detallada.
/// Lineas de detalle de la factura.
Relationship Items As Facturae.v32.InvoiceLineType(XMLITEMNAME = "InvoiceLine", XMLNAME = "Items", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceType2 ];

/// Datos de pago.
/// Vencimiento.
Relationship PaymentDetails As Facturae.v32.InstallmentType(XMLITEMNAME = "Installment", XMLNAME = "PaymentDetails", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceType3 ];

/// Literales legales.
/// Literales legales establecidos: Donaciones, Subvenciones, Carácter irreversible subvenciones, Atención pago moneda prevista, Proveedores residentes, directiva 77/388/CEE de 17 de Mayo, Sexta Directiva del Consejo en materia de IVA, Operación Triangular, Operación en Cadena, Régimen Especial, Artº 26 de la Directiva 77/388/CEE, Agencias de Viajes, Renuncia a la exención en régimen especial de IVA (artículo 163.sexies cinco de la Ley 36/2006 de 29 de noviembre de medidas para la prevención del fraude fiscal), etc.
Property LegalLiterals As list Of Facturae.v32.TextMax250Type(XMLITEMNAME = "LegalReference", XMLNAME = "LegalLiterals", XMLPROJECTION = "COLLECTION");

/// Datos adicionales.
Property AdditionalData As Facturae.v32.AdditionalDataType(XMLNAME = "AdditionalData");

Relationship Facturae As Facturae.v32.Facturae(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Invoices ];

Storage Default
{
<Data name="InvoiceTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>InvoiceHeader</Value>
</Value>
<Value name="3">
<Value>InvoiceIssueData</Value>
</Value>
<Value name="4">
<Value>InvoiceTotals</Value>
</Value>
<Value name="5">
<Value>LegalLiterals</Value>
</Value>
<Value name="6">
<Value>AdditionalData</Value>
</Value>
<Value name="7">
<Value>Facturae</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.InvoiceTypeD</DataLocation>
<DefaultData>InvoiceTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.InvoiceTypeD</IdLocation>
<IndexLocation>^Facturae.v32.InvoiceTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.InvoiceTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
