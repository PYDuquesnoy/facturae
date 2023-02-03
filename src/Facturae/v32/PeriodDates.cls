/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.PeriodDates Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "PeriodDates";

Parameter XMLSEQUENCE = 1;

/// Fecha de inicio. ISO 8601:2004.
Property StartDate As %Date(XMLNAME = "StartDate") [ Required ];

/// Fecha final. ISO 8601:2004.
Property EndDate As %Date(XMLNAME = "EndDate") [ Required ];

Storage Default
{
<Data name="PeriodDatesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>StartDate</Value>
</Value>
<Value name="3">
<Value>EndDate</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.PeriodDatesD</DataLocation>
<DefaultData>PeriodDatesDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.PeriodDatesD</IdLocation>
<IndexLocation>^Facturae.v32.PeriodDatesI</IndexLocation>
<StreamLocation>^Facturae.v32.PeriodDatesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
