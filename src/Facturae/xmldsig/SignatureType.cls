/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.SignatureType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "SignatureType";

Parameter XMLSEQUENCE = 1;

Property SignedInfo As Facturae.xmldsig.SignedInfoType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "SignedInfo", XMLREF = 1) [ Required ];

Property SignatureValue As Facturae.xmldsig.SignatureValueType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "SignatureValue", XMLREF = 1) [ Required ];

Property KeyInfo As Facturae.xmldsig.KeyInfoType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "KeyInfo", XMLREF = 1);

Relationship Object As Facturae.xmldsig.ObjectType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Object", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = SignatureType ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="SignatureTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SignedInfo</Value>
</Value>
<Value name="3">
<Value>SignatureValue</Value>
</Value>
<Value name="4">
<Value>KeyInfo</Value>
</Value>
<Value name="5">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmlF88A.SignatureTypeD</DataLocation>
<DefaultData>SignatureTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmlF88A.SignatureTypeD</IdLocation>
<IndexLocation>^Facturae.xmlF88A.SignatureTypeI</IndexLocation>
<StreamLocation>^Facturae.xmlF88A.SignatureTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
