/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.CanonicalizationMethodType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "CanonicalizationMethodType";

Parameter XMLSEQUENCE = 1;

Property content As %XML.String(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property Algorithm As %xsd.anyURI(XMLNAME = "Algorithm", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="CanonicalizationMethodTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
<Value name="3">
<Value>Algorithm</Value>
</Value>
</Data>
<DataLocation>^Facturae.xF88A.Canonicaliz4B68D</DataLocation>
<DefaultData>CanonicalizationMethodTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xF88A.Canonicaliz4B68D</IdLocation>
<IndexLocation>^Facturae.xF88A.Canonicaliz4B68I</IndexLocation>
<StreamLocation>^Facturae.xF88A.Canonicaliz4B68S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
