/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.ReferenceInfoType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.xmldsig.DigestValueType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "ReferenceInfoType";

Parameter XMLSEQUENCE = 1;

Property DigestMethod As Facturae.xmldsig.DigestMethodType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "DigestMethod", XMLREF = 1) [ Required ];

Property DigestValue As Facturae.xmldsig.DigestValueType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "DigestValue", XMLREF = 1) [ Required ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Property URI As %xsd.anyURI(XMLNAME = "URI", XMLPROJECTION = "ATTRIBUTE");

Relationship GenericTimeStampType1 As Facturae.xades.GenericTimeStampType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ReferenceInfo ];

Relationship OtherTimeStampType As Facturae.xades.OtherTimeStampType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ReferenceInfo ];

Storage Default
{
<Data name="ReferenceInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DigestMethod</Value>
</Value>
<Value name="3">
<Value>DigestValue</Value>
</Value>
<Value name="4">
<Value>Id</Value>
</Value>
<Value name="5">
<Value>URI</Value>
</Value>
<Value name="6">
<Value>GenericTimeStampType1</Value>
</Value>
<Value name="7">
<Value>OtherTimeStampType</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.ReferenceInE0DDD</DataLocation>
<DefaultData>ReferenceInfoTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.ReferenceInE0DDD</IdLocation>
<IndexLocation>^Facturae.x7BF1.ReferenceInE0DDI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.ReferenceInE0DDS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
