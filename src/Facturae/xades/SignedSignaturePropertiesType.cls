/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.SignedSignaturePropertiesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "SignedSignaturePropertiesType";

Parameter XMLSEQUENCE = 1;

Property SigningTime As %TimeStamp(XMLNAME = "SigningTime");

Relationship SigningCertificate As Facturae.xades.CertIDType(XMLITEMNAME = "Cert", XMLNAME = "SigningCertificate", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = SignedSignaturePropertiesType ];

Property SignaturePolicyIdentifier As Facturae.xades.SignaturePolicyIdentifierType(XMLNAME = "SignaturePolicyIdentifier");

Property SignatureProductionPlace As Facturae.xades.SignatureProductionPlaceType(XMLNAME = "SignatureProductionPlace");

Property SignerRole As Facturae.xades.SignerRoleType(XMLNAME = "SignerRole");

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="SignedSignaturePropertiesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SigningTime</Value>
</Value>
<Value name="3">
<Value>SignaturePolicyIdentifier</Value>
</Value>
<Value name="4">
<Value>SignatureProductionPlace</Value>
</Value>
<Value name="5">
<Value>SignerRole</Value>
</Value>
<Value name="6">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.SignedSignaD200D</DataLocation>
<DefaultData>SignedSignaturePropertiesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.SignedSignaD200D</IdLocation>
<IndexLocation>^Facturae.x7BF1.SignedSignaD200I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.SignedSignaD200S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
