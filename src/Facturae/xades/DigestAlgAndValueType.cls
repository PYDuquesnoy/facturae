/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.DigestAlgAndValueType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.xmldsig.DigestValueType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "DigestAlgAndValueType";

Parameter XMLSEQUENCE = 1;

Property DigestMethod As Facturae.xmldsig.DigestMethodType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "DigestMethod", XMLREF = 1) [ Required ];

Property DigestValue As Facturae.xmldsig.DigestValueType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "DigestValue", XMLREF = 1) [ Required ];

Storage Default
{
<Data name="DigestAlgAndValueTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DigestMethod</Value>
</Value>
<Value name="3">
<Value>DigestValue</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.DigestAlgAn3845D</DataLocation>
<DefaultData>DigestAlgAndValueTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.DigestAlgAn3845D</IdLocation>
<IndexLocation>^Facturae.x7BF1.DigestAlgAn3845I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.DigestAlgAn3845S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
