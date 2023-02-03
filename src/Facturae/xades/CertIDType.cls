/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.CertIDType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "CertIDType";

Parameter XMLSEQUENCE = 1;

Property CertDigest As Facturae.xades.DigestAlgAndValueType(XMLNAME = "CertDigest") [ Required ];

Property IssuerSerial As Facturae.xmldsig.X509IssuerSerialType(XMLNAME = "IssuerSerial") [ Required ];

Property URI As %xsd.anyURI(XMLNAME = "URI", XMLPROJECTION = "ATTRIBUTE");

Relationship SignedSignaturePropertiesType As Facturae.xades.SignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = SigningCertificate ];

Relationship CompleteCertificateRefsType As Facturae.xades.CompleteCertificateRefsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = CertRefs ];

Storage Default
{
<Data name="CertIDTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CertDigest</Value>
</Value>
<Value name="3">
<Value>IssuerSerial</Value>
</Value>
<Value name="4">
<Value>URI</Value>
</Value>
<Value name="5">
<Value>SignedSignaturePropertiesType</Value>
</Value>
<Value name="6">
<Value>CompleteCertificateRefsType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xades.CertIDTypeD</DataLocation>
<DefaultData>CertIDTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xades.CertIDTypeD</IdLocation>
<IndexLocation>^Facturae.xades.CertIDTypeI</IndexLocation>
<StreamLocation>^Facturae.xades.CertIDTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
