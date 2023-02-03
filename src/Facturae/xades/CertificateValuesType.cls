/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.CertificateValuesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "CertificateValuesType";

Parameter XMLSEQUENCE = 0;

Property EncapsulatedX509Certificate As list Of Facturae.xades.EncapsulatedPKIDataType(XMLNAME = "EncapsulatedX509Certificate", XMLPROJECTION = "ELEMENT");

Relationship OtherCertificate As Facturae.xades.AnyType(XMLNAME = "OtherCertificate", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = CertificateValuesType ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Relationship UnsignedSignaturePropertiesType8 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = CertificateValues ];

Relationship UnsignedSignaturePropertiesType10 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AttrAuthoritiesCertValues ];

Storage Default
{
<Data name="CertificateValuesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>EncapsulatedX509Certificate</Value>
</Value>
<Value name="3">
<Value>Id</Value>
</Value>
<Value name="4">
<Value>UnsignedSignaturePropertiesType8</Value>
</Value>
<Value name="5">
<Value>UnsignedSignaturePropertiesType10</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.CertificateVE4FD</DataLocation>
<DefaultData>CertificateValuesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.CertificateVE4FD</IdLocation>
<IndexLocation>^Facturae.x7BF1.CertificateVE4FI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.CertificateVE4FS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
