/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.CompleteCertificateRefsType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "CompleteCertificateRefsType";

Parameter XMLSEQUENCE = 1;

Relationship CertRefs As Facturae.xades.CertIDType(XMLITEMNAME = "Cert", XMLNAME = "CertRefs", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = CompleteCertificateRefsType ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Relationship UnsignedSignaturePropertiesType2 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = CompleteCertificateRefs ];

Relationship UnsignedSignaturePropertiesType4 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AttributeCertificateRefs ];

Storage Default
{
<Data name="CompleteCertificateRefsTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Id</Value>
</Value>
<Value name="3">
<Value>UnsignedSignaturePropertiesType2</Value>
</Value>
<Value name="4">
<Value>UnsignedSignaturePropertiesType4</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.CompleteCer857AD</DataLocation>
<DefaultData>CompleteCertificateRefsTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.CompleteCer857AD</IdLocation>
<IndexLocation>^Facturae.x7BF1.CompleteCer857AI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.CompleteCer857AS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
