/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.PlaceOfIssueType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.PostCodeType, Facturae.v32.TextMax20Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "PlaceOfIssueType";

Parameter XMLSEQUENCE = 1;

/// Código postal. Asignado por Correos.
Property PostCode As Facturae.v32.PostCodeType(XMLNAME = "PostCode") [ Required ];

/// Texto del nombre de la plaza.
Property PlaceOfIssueDescription As Facturae.v32.TextMax20Type(XMLNAME = "PlaceOfIssueDescription");

Storage Default
{
<Data name="PlaceOfIssueTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PostCode</Value>
</Value>
<Value name="3">
<Value>PlaceOfIssueDescription</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.PlaceOfIssueTypeD</DataLocation>
<DefaultData>PlaceOfIssueTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.PlaceOfIssueTypeD</IdLocation>
<IndexLocation>^Facturae.v32.PlaceOfIssueTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.PlaceOfIssueTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
