/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.IncludeType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "IncludeType";

Parameter XMLSEQUENCE = 1;

Property URI As %xsd.anyURI(XMLNAME = "URI", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property referencedData As %Boolean(XMLNAME = "referencedData", XMLPROJECTION = "ATTRIBUTE");

Relationship GenericTimeStampType As Facturae.xades.GenericTimeStampType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Include ];

Relationship XAdESTimeStampType As Facturae.xades.XAdESTimeStampType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Include ];

Storage Default
{
<Data name="IncludeTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>URI</Value>
</Value>
<Value name="3">
<Value>referencedData</Value>
</Value>
<Value name="4">
<Value>GenericTimeStampType</Value>
</Value>
<Value name="5">
<Value>XAdESTimeStampType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xades.IncludeTypeD</DataLocation>
<DefaultData>IncludeTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xades.IncludeTypeD</IdLocation>
<IndexLocation>^Facturae.xades.IncludeTypeI</IndexLocation>
<StreamLocation>^Facturae.xades.IncludeTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
