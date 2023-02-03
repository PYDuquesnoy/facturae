/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.DataObjectFormatType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "DataObjectFormatType";

Parameter XMLSEQUENCE = 1;

Property Description As %String(MAXLEN = "", XMLNAME = "Description");

Property ObjectIdentifier As Facturae.xades.ObjectIdentifierType(XMLNAME = "ObjectIdentifier");

Property MimeType As %String(MAXLEN = "", XMLNAME = "MimeType");

Property Encoding As %xsd.anyURI(XMLNAME = "Encoding");

Property ObjectReference As %xsd.anyURI(XMLNAME = "ObjectReference", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship SignedDataObjectPropertiesType As Facturae.xades.SignedDataObjectPropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = DataObjectFormat ];

Storage Default
{
<Data name="DataObjectFormatTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Description</Value>
</Value>
<Value name="3">
<Value>ObjectIdentifier</Value>
</Value>
<Value name="4">
<Value>MimeType</Value>
</Value>
<Value name="5">
<Value>Encoding</Value>
</Value>
<Value name="6">
<Value>ObjectReference</Value>
</Value>
<Value name="7">
<Value>SignedDataObjectPropertiesType</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.DataObjectF3699D</DataLocation>
<DefaultData>DataObjectFormatTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.DataObjectF3699D</IdLocation>
<IndexLocation>^Facturae.x7BF1.DataObjectF3699I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.DataObjectF3699S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
