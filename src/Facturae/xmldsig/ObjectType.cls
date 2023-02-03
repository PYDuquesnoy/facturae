/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.ObjectType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "ObjectType";

Parameter XMLSEQUENCE = 0;

Property content As %XML.String(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Property MimeType As %String(MAXLEN = "", XMLNAME = "MimeType", XMLPROJECTION = "ATTRIBUTE");

Property Encoding As %xsd.anyURI(XMLNAME = "Encoding", XMLPROJECTION = "ATTRIBUTE");

Relationship SignatureType As Facturae.xmldsig.SignatureType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Object ];

Storage Default
{
<Data name="ObjectTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
<Value name="3">
<Value>Id</Value>
</Value>
<Value name="4">
<Value>MimeType</Value>
</Value>
<Value name="5">
<Value>Encoding</Value>
</Value>
<Value name="6">
<Value>SignatureType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmldsig.ObjectTypeD</DataLocation>
<DefaultData>ObjectTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmldsig.ObjectTypeD</IdLocation>
<IndexLocation>^Facturae.xmldsig.ObjectTypeI</IndexLocation>
<StreamLocation>^Facturae.xmldsig.ObjectTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
