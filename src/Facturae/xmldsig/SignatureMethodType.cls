/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.SignatureMethodType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.xmldsig.HMACOutputLengthType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "SignatureMethodType";

Parameter XMLSEQUENCE = 1;

Property content As %XML.String(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property HMACOutputLength As Facturae.xmldsig.HMACOutputLengthType(XMLNAME = "HMACOutputLength");

Property Algorithm As %xsd.anyURI(XMLNAME = "Algorithm", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="SignatureMethodTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
<Value name="3">
<Value>HMACOutputLength</Value>
</Value>
<Value name="4">
<Value>Algorithm</Value>
</Value>
</Data>
<DataLocation>^Facturae.xF88A.SignatureMe4FE8D</DataLocation>
<DefaultData>SignatureMethodTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xF88A.SignatureMe4FE8D</IdLocation>
<IndexLocation>^Facturae.xF88A.SignatureMe4FE8I</IndexLocation>
<StreamLocation>^Facturae.xF88A.SignatureMe4FE8S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
