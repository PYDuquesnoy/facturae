/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.DigestMethodType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "DigestMethodType";

Parameter XMLSEQUENCE = 1;

Property content As %XML.String(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property Algorithm As %xsd.anyURI(XMLNAME = "Algorithm", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="DigestMethodTypeDefaultData">
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
<DataLocation>^Facturae.xF88A.DigestMetho6D3CD</DataLocation>
<DefaultData>DigestMethodTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xF88A.DigestMetho6D3CD</IdLocation>
<IndexLocation>^Facturae.xF88A.DigestMetho6D3CI</IndexLocation>
<StreamLocation>^Facturae.xF88A.DigestMetho6D3CS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
