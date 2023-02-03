/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.TaxType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.DoubleTwoDecimalType, Facturae.v32.TaxTypeCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "TaxType";

Parameter XMLSEQUENCE = 1;

/// Clase de impuesto. Concepto fiscal por el que se tributa o retención a cuenta. Cuando haya lugar, debe recogerse en el elemento "observaciones" el motivo por lo que este impuesto está "no sujeto" o "exento".
Property TaxTypeCode As Facturae.v32.TaxTypeCodeType(XMLNAME = "TaxTypeCode") [ Required ];

/// Porcentaje a aplicar en cada caso. Siempre con dos decimales.
Property TaxRate As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TaxRate") [ Required ];

/// Base imponible a precio de mercado = Total Importe Bruto + Recargos - Descuentos Globales/factura, por cada clase y porcentaje. Base imponible de los impuestos. Siempre con dos decimales.
Property TaxableBase As Facturae.v32.AmountType(XMLNAME = "TaxableBase") [ Required ];

/// Cuota. Importe resultante de aplicar a la Base Imponible el porcentaje correspondiente. Siempre con dos decimales.
Property TaxAmount As Facturae.v32.AmountType(XMLNAME = "TaxAmount");

Relationship InvoiceType1 As Facturae.v32.InvoiceType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = TaxesWithheld ];

Relationship InvoiceLineType3 As Facturae.v32.InvoiceLineType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = TaxesWithheld ];

Storage Default
{
<Data name="TaxTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TaxTypeCode</Value>
</Value>
<Value name="3">
<Value>TaxRate</Value>
</Value>
<Value name="4">
<Value>TaxableBase</Value>
</Value>
<Value name="5">
<Value>TaxAmount</Value>
</Value>
<Value name="6">
<Value>InvoiceType1</Value>
</Value>
<Value name="7">
<Value>InvoiceLineType3</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.TaxTypeD</DataLocation>
<DefaultData>TaxTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.TaxTypeD</IdLocation>
<IndexLocation>^Facturae.v32.TaxTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.TaxTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
