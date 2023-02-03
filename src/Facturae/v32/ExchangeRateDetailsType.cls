/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.ExchangeRateDetailsType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.DoubleTwoDecimalType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "ExchangeRateDetailsType";

Parameter XMLSEQUENCE = 1;

/// Tipo de Cambio. Artº 79.once de la Ley 37/92 de 28 de diciembre del Impuesto sobre el Valor Añadido. Siempre con dos decimales. Cambio vendedor fijado por el Banco de España y vigente en el momento del devengo.
Property ExchangeRate As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "ExchangeRate") [ Required ];

/// Fecha de publicación del tipo de cambio aplicado. ISO 8601:2004.
Property ExchangeRateDate As %Date(XMLNAME = "ExchangeRateDate") [ Required ];

Storage Default
{
<Data name="ExchangeRateDetailsTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ExchangeRate</Value>
</Value>
<Value name="3">
<Value>ExchangeRateDate</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.ExchangeRat4634D</DataLocation>
<DefaultData>ExchangeRateDetailsTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.ExchangeRat4634D</IdLocation>
<IndexLocation>^Facturae.v32.ExchangeRat4634I</IndexLocation>
<StreamLocation>^Facturae.v32.ExchangeRat4634S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
