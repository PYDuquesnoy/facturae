/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.KeyValueType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "KeyValueType";

Parameter XMLSEQUENCE = 0;

Property content As %XML.String(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property DSAKeyValue As Facturae.xmldsig.DSAKeyValueType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "DSAKeyValue", XMLREF = 1);

Property RSAKeyValue As Facturae.xmldsig.RSAKeyValueType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "RSAKeyValue", XMLREF = 1);

Property any As %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Relationship KeyInfoType As Facturae.xmldsig.KeyInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = KeyValue ];

Storage Default
{
<Data name="KeyValueTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
<Value name="3">
<Value>DSAKeyValue</Value>
</Value>
<Value name="4">
<Value>RSAKeyValue</Value>
</Value>
<Value name="5">
<Value>any</Value>
</Value>
<Value name="6">
<Value>KeyInfoType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmldsig.KeyValueTypeD</DataLocation>
<DefaultData>KeyValueTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmldsig.KeyValueTypeD</IdLocation>
<IndexLocation>^Facturae.xmldsig.KeyValueTypeI</IndexLocation>
<StreamLocation>^Facturae.xmldsig.KeyValueTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
