/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.AmountsWithheldType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.DoubleFourDecimalType, Facturae.v32.DoubleTwoDecimalType, Facturae.v32.TextMax2500Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "AmountsWithheldType";

Parameter XMLSEQUENCE = 1;

/// Motivo de Retención. Descripción de la finalidad de la Retención.
Property WithholdingReason As Facturae.v32.TextMax2500Type(XMLNAME = "WithholdingReason") [ Required ];

/// Porcentaje de Retención. Porcentaje sobre el Total a Pagar. Los porcentajes se reflejan con 4 decimales.
Property WithholdingRate As Facturae.v32.DoubleFourDecimalType(XMLNAME = "WithholdingRate");

/// Importe de Retención. Importe a retener sobre el Total a Pagar. Siempre con dos decimales.
Property WithholdingAmount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "WithholdingAmount") [ Required ];

Storage Default
{
<Data name="AmountsWithheldTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>WithholdingReason</Value>
</Value>
<Value name="3">
<Value>WithholdingRate</Value>
</Value>
<Value name="4">
<Value>WithholdingAmount</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.AmountsWithF778D</DataLocation>
<DefaultData>AmountsWithheldTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.AmountsWithF778D</IdLocation>
<IndexLocation>^Facturae.v32.AmountsWithF778I</IndexLocation>
<StreamLocation>^Facturae.v32.AmountsWithF778S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
