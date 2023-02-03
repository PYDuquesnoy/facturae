/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.AnyType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "AnyType";

Parameter XMLSEQUENCE = 0;

Property content As %XML.String(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Relationship GenericTimeStampType2 As Facturae.xades.GenericTimeStampType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = XMLTimeStamp ];

Relationship XAdESTimeStampType1 As Facturae.xades.XAdESTimeStampType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = XMLTimeStamp ];

Relationship UnsignedDataObjectPropertiesType As Facturae.xades.UnsignedDataObjectPropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = UnsignedDataObjectProperty ];

Relationship SignaturePolicyIdType As Facturae.xades.SignaturePolicyIdType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = SigPolicyQualifiers ];

Relationship CommitmentTypeIndicationType As Facturae.xades.CommitmentTypeIndicationType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = CommitmentTypeQualifiers ];

Relationship SignerRoleType As Facturae.xades.SignerRoleType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ClaimedRoles ];

Relationship CompleteRevocationRefsType2 As Facturae.xades.CompleteRevocationRefsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = OtherRefs ];

Relationship CertificateValuesType As Facturae.xades.CertificateValuesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = OtherCertificate ];

Relationship RevocationValuesType As Facturae.xades.RevocationValuesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = OtherValues ];

Storage Default
{
<Data name="AnyTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
<Value name="3">
<Value>GenericTimeStampType2</Value>
</Value>
<Value name="4">
<Value>XAdESTimeStampType1</Value>
</Value>
<Value name="5">
<Value>UnsignedDataObjectPropertiesType</Value>
</Value>
<Value name="6">
<Value>SignaturePolicyIdType</Value>
</Value>
<Value name="7">
<Value>CommitmentTypeIndicationType</Value>
</Value>
<Value name="8">
<Value>SignerRoleType</Value>
</Value>
<Value name="9">
<Value>CompleteRevocationRefsType2</Value>
</Value>
<Value name="10">
<Value>CertificateValuesType</Value>
</Value>
<Value name="11">
<Value>RevocationValuesType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xades.AnyTypeD</DataLocation>
<DefaultData>AnyTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xades.AnyTypeD</IdLocation>
<IndexLocation>^Facturae.xades.AnyTypeI</IndexLocation>
<StreamLocation>^Facturae.xades.AnyTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
