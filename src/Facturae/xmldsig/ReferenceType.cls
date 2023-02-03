/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.ReferenceType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.xmldsig.DigestValueType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "ReferenceType";

Parameter XMLSEQUENCE = 1;

Property Transforms As Facturae.xmldsig.TransformsType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Transforms", XMLREF = 1);

Property DigestMethod As Facturae.xmldsig.DigestMethodType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "DigestMethod", XMLREF = 1) [ Required ];

Property DigestValue As Facturae.xmldsig.DigestValueType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "DigestValue", XMLREF = 1) [ Required ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Property URI As %xsd.anyURI(XMLNAME = "URI", XMLPROJECTION = "ATTRIBUTE");

Property Type As %xsd.anyURI(XMLNAME = "Type", XMLPROJECTION = "ATTRIBUTE");

Relationship SignedInfoType As Facturae.xmldsig.SignedInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Reference ];

Relationship ManifestType As Facturae.xmldsig.ManifestType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Reference ];

Storage Default
{
<Data name="ReferenceTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Transforms</Value>
</Value>
<Value name="3">
<Value>DigestMethod</Value>
</Value>
<Value name="4">
<Value>DigestValue</Value>
</Value>
<Value name="5">
<Value>Id</Value>
</Value>
<Value name="6">
<Value>URI</Value>
</Value>
<Value name="7">
<Value>Type</Value>
</Value>
<Value name="8">
<Value>SignedInfoType</Value>
</Value>
<Value name="9">
<Value>ManifestType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmlF88A.ReferenceTypeD</DataLocation>
<DefaultData>ReferenceTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmlF88A.ReferenceTypeD</IdLocation>
<IndexLocation>^Facturae.xmlF88A.ReferenceTypeI</IndexLocation>
<StreamLocation>^Facturae.xmlF88A.ReferenceTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
