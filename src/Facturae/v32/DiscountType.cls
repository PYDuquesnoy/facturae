/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.DiscountType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.DoubleFourDecimalType, Facturae.v32.DoubleSixDecimalType, Facturae.v32.TextMax2500Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "DiscountType";

Parameter XMLSEQUENCE = 1;

/// Concepto por el que se aplica descuento.
Property DiscountReason As Facturae.v32.TextMax2500Type(XMLNAME = "DiscountReason") [ Required ];

/// Porcentaje a descontar del Total Importe Bruto (TIB). Los porcentajes se reflejan con 4 decimales.
Property DiscountRate As Facturae.v32.DoubleFourDecimalType(XMLNAME = "DiscountRate");

/// Importe a descontar sobre el TIB. Siempre con seis decimales.
Property DiscountAmount As Facturae.v32.DoubleSixDecimalType(XMLNAME = "DiscountAmount") [ Required ];

Relationship InvoiceLineType1 As Facturae.v32.InvoiceLineType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = DiscountsAndRebates ];

Relationship InvoiceTotalsType As Facturae.v32.InvoiceTotalsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = GeneralDiscounts ];

Storage Default
{
<Data name="DiscountTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DiscountReason</Value>
</Value>
<Value name="3">
<Value>DiscountRate</Value>
</Value>
<Value name="4">
<Value>DiscountAmount</Value>
</Value>
<Value name="5">
<Value>InvoiceLineType1</Value>
</Value>
<Value name="6">
<Value>InvoiceTotalsType</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.DiscountTypeD</DataLocation>
<DefaultData>DiscountTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.DiscountTypeD</IdLocation>
<IndexLocation>^Facturae.v32.DiscountTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.DiscountTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
