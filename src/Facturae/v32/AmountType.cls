/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.AmountType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.DoubleTwoDecimalType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "AmountType";

Parameter XMLSEQUENCE = 1;

/// Importe en la moneda original de la facturación. Siempre que la divisa de facturación sea distinta de EURO, el elemento EquivalentInEuros deberá cumplimentarse para satisfacer los requerimientos del Art.10.1 del Reglamento sobre facturación, RD 1496/2003 de 28 de Noviembre.
Property TotalAmount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalAmount") [ Required ];

/// Importe equivalente en Euros. Siempre con dos decimales.
Property EquivalentInEuros As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "EquivalentInEuros");

Storage Default
{
<Data name="AmountTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TotalAmount</Value>
</Value>
<Value name="3">
<Value>EquivalentInEuros</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.AmountTypeD</DataLocation>
<DefaultData>AmountTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.AmountTypeD</IdLocation>
<IndexLocation>^Facturae.v32.AmountTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.AmountTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
