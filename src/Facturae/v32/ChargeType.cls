/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.ChargeType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.DoubleFourDecimalType, Facturae.v32.DoubleSixDecimalType, Facturae.v32.TextMax2500Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "ChargeType";

Parameter XMLSEQUENCE = 1;

/// Concepto por el que se aplica el cargo.
Property ChargeReason As Facturae.v32.TextMax2500Type(XMLNAME = "ChargeReason") [ Required ];

/// Porcentaje a cargar sobre el TIB. Los porcentajes se reflejan con 4 decimales.
Property ChargeRate As Facturae.v32.DoubleFourDecimalType(XMLNAME = "ChargeRate");

/// Importe a cargar sobre el TIB. Siempre con seis decimales.
Property ChargeAmount As Facturae.v32.DoubleSixDecimalType(XMLNAME = "ChargeAmount") [ Required ];

Relationship InvoiceLineType2 As Facturae.v32.InvoiceLineType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Charges ];

Relationship InvoiceTotalsType1 As Facturae.v32.InvoiceTotalsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = GeneralSurcharges ];

Storage Default
{
<Data name="ChargeTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ChargeReason</Value>
</Value>
<Value name="3">
<Value>ChargeRate</Value>
</Value>
<Value name="4">
<Value>ChargeAmount</Value>
</Value>
<Value name="5">
<Value>InvoiceLineType2</Value>
</Value>
<Value name="6">
<Value>InvoiceTotalsType1</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.ChargeTypeD</DataLocation>
<DefaultData>ChargeTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.ChargeTypeD</IdLocation>
<IndexLocation>^Facturae.v32.ChargeTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.ChargeTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
