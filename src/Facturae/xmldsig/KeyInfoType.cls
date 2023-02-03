/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.KeyInfoType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "KeyInfoType";

Parameter XMLSEQUENCE = 0;

Property content As %XML.String(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property KeyName As list Of %String(MAXLEN = "", REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "KeyName", XMLPROJECTION = "ELEMENT", XMLREF = 1);

Relationship KeyValue As Facturae.xmldsig.KeyValueType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "KeyValue", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = KeyInfoType ];

Relationship RetrievalMethod As Facturae.xmldsig.RetrievalMethodType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "RetrievalMethod", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = KeyInfoType1 ];

Relationship X509Data As Facturae.xmldsig.X509DataType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "X509Data", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = KeyInfoType2 ];

Relationship PGPData As Facturae.xmldsig.PGPDataType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "PGPData", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = KeyInfoType3 ];

Relationship SPKIData As Facturae.xmldsig.SPKIDataType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "SPKIData", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = KeyInfoType4 ];

Property MgmtData As list Of %String(MAXLEN = "", REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "MgmtData", XMLPROJECTION = "ELEMENT", XMLREF = 1);

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="KeyInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
<Value name="3">
<Value>KeyName</Value>
</Value>
<Value name="4">
<Value>MgmtData</Value>
</Value>
<Value name="5">
<Value>any</Value>
</Value>
<Value name="6">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmldsig.KeyInfoTypeD</DataLocation>
<DefaultData>KeyInfoTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmldsig.KeyInfoTypeD</IdLocation>
<IndexLocation>^Facturae.xmldsig.KeyInfoTypeI</IndexLocation>
<StreamLocation>^Facturae.xmldsig.KeyInfoTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
