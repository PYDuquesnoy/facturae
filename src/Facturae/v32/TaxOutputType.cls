/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.TaxOutputType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.DoubleTwoDecimalType, Facturae.v32.TaxTypeCodeType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "TaxOutputType";

Parameter XMLSEQUENCE = 1;

/// Clase de impuesto. Concepto Fiscal por el que se tributa o retención a cuenta. Cuando haya lugar, debe recogerse en el elemento "observaciones" el motivo por lo que este impuesto está "no sujeto" o "exento".
Property TaxTypeCode As Facturae.v32.TaxTypeCodeType(XMLNAME = "TaxTypeCode") [ Required ];

/// Porcentaje a aplicar en cada caso. Siempre con dos decimales.
Property TaxRate As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TaxRate") [ Required ];

/// Base imponible = Total Importe Bruto + Recargos - Descuentos Globales/factura, por cada clase, porcentaje y recargo de equivalencia. Base imponible de los impuestos. Siempre con dos decimales.
Property TaxableBase As Facturae.v32.AmountType(XMLNAME = "TaxableBase") [ Required ];

/// Cuota. Importe resultante de aplicar a la Base Imponible el porcentaje correspondiente. Siempre con dos decimales.
Property TaxAmount As Facturae.v32.AmountType(XMLNAME = "TaxAmount");

/// Base imponible especial (artículo tercero punto 5 Ley 36/2006) = Total Importe Bruto + Recargos - Descuentos Globales/factura, por cada clase y porcentaje. Base imponible a precio de coste de los impuestos. Siempre con dos decimales. Si se rellena también hay que rellenar la base imponible a precio de mercado a efectos informativos pero la que se contabiliza es ésta.
Property SpecialTaxableBase As Facturae.v32.AmountType(XMLNAME = "SpecialTaxableBase");

/// Cuota especial. Importe resultante de aplicar a la Base Imponible especial el porcentaje correspondiente. Siempre con dos decimales.
Property SpecialTaxAmount As Facturae.v32.AmountType(XMLNAME = "SpecialTaxAmount");

/// Recargo de Equivalencia. Siempre con dos decimales.
Property EquivalenceSurcharge As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "EquivalenceSurcharge");

/// Cuota. Importe resultante de aplicar a la Base Imponible el porcentaje del Recargo de Equivalencia. Siempre con dos decimales.
Property EquivalenceSurchargeAmount As Facturae.v32.AmountType(XMLNAME = "EquivalenceSurchargeAmount");

Relationship InvoiceType As Facturae.v32.InvoiceType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = TaxesOutputs ];

Storage Default
{
<Data name="TaxOutputTypeDefaultData">
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
<Value>SpecialTaxableBase</Value>
</Value>
<Value name="7">
<Value>SpecialTaxAmount</Value>
</Value>
<Value name="8">
<Value>EquivalenceSurcharge</Value>
</Value>
<Value name="9">
<Value>EquivalenceSurchargeAmount</Value>
</Value>
<Value name="10">
<Value>InvoiceType</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.TaxOutputTypeD</DataLocation>
<DefaultData>TaxOutputTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.TaxOutputTypeD</IdLocation>
<IndexLocation>^Facturae.v32.TaxOutputTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.TaxOutputTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
