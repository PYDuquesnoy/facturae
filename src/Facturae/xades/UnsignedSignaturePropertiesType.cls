/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.UnsignedSignaturePropertiesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "UnsignedSignaturePropertiesType";

Parameter XMLSEQUENCE = 0;

Relationship CounterSignature As Facturae.xades.CounterSignatureType(XMLNAME = "CounterSignature", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType ];

Relationship SignatureTimeStamp As Facturae.xades.XAdESTimeStampType(XMLNAME = "SignatureTimeStamp", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType1 ];

Relationship CompleteCertificateRefs As Facturae.xades.CompleteCertificateRefsType(XMLNAME = "CompleteCertificateRefs", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType2 ];

Relationship CompleteRevocationRefs As Facturae.xades.CompleteRevocationRefsType(XMLNAME = "CompleteRevocationRefs", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType3 ];

Relationship AttributeCertificateRefs As Facturae.xades.CompleteCertificateRefsType(XMLNAME = "AttributeCertificateRefs", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType4 ];

Relationship AttributeRevocationRefs As Facturae.xades.CompleteRevocationRefsType(XMLNAME = "AttributeRevocationRefs", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType5 ];

Relationship SigAndRefsTimeStamp As Facturae.xades.XAdESTimeStampType(XMLNAME = "SigAndRefsTimeStamp", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType6 ];

Relationship RefsOnlyTimeStamp As Facturae.xades.XAdESTimeStampType(XMLNAME = "RefsOnlyTimeStamp", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType7 ];

Relationship CertificateValues As Facturae.xades.CertificateValuesType(XMLNAME = "CertificateValues", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType8 ];

Relationship RevocationValues As Facturae.xades.RevocationValuesType(XMLNAME = "RevocationValues", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType9 ];

Relationship AttrAuthoritiesCertValues As Facturae.xades.CertificateValuesType(XMLNAME = "AttrAuthoritiesCertValues", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType10 ];

Relationship AttributeRevocationValues As Facturae.xades.RevocationValuesType(XMLNAME = "AttributeRevocationValues", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType11 ];

Relationship ArchiveTimeStamp As Facturae.xades.XAdESTimeStampType(XMLNAME = "ArchiveTimeStamp", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedSignaturePropertiesType12 ];

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="UnsignedSignaturePropertiesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>any</Value>
</Value>
<Value name="3">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.UnsignedSig6593D</DataLocation>
<DefaultData>UnsignedSignaturePropertiesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.UnsignedSig6593D</IdLocation>
<IndexLocation>^Facturae.x7BF1.UnsignedSig6593I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.UnsignedSig6593S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
