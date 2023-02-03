/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.SignedInfoType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "SignedInfoType";

Parameter XMLSEQUENCE = 1;

Property CanonicalizationMethod As Facturae.xmldsig.CanonicalizationMethodType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "CanonicalizationMethod", XMLREF = 1) [ Required ];

Property SignatureMethod As Facturae.xmldsig.SignatureMethodType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "SignatureMethod", XMLREF = 1) [ Required ];

Relationship Reference As Facturae.xmldsig.ReferenceType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Reference", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = SignedInfoType ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="SignedInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CanonicalizationMethod</Value>
</Value>
<Value name="3">
<Value>SignatureMethod</Value>
</Value>
<Value name="4">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmF88A.SignedInfoTypeD</DataLocation>
<DefaultData>SignedInfoTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmF88A.SignedInfoTypeD</IdLocation>
<IndexLocation>^Facturae.xmF88A.SignedInfoTypeI</IndexLocation>
<StreamLocation>^Facturae.xmF88A.SignedInfoTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
