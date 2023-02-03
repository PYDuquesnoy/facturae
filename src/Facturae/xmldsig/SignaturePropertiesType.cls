/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.SignaturePropertiesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "SignaturePropertiesType";

Parameter XMLSEQUENCE = 1;

Relationship SignatureProperty As Facturae.xmldsig.SignaturePropertyType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "SignatureProperty", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = SignaturePropertiesType ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="SignaturePropertiesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.xF88A.SignaturePrA4CCD</DataLocation>
<DefaultData>SignaturePropertiesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xF88A.SignaturePrA4CCD</IdLocation>
<IndexLocation>^Facturae.xF88A.SignaturePrA4CCI</IndexLocation>
<StreamLocation>^Facturae.xF88A.SignaturePrA4CCS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
