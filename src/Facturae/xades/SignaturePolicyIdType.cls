/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.SignaturePolicyIdType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "SignaturePolicyIdType";

Parameter XMLSEQUENCE = 1;

Property SigPolicyId As Facturae.xades.ObjectIdentifierType(XMLNAME = "SigPolicyId") [ Required ];

Property Transforms As Facturae.xmldsig.TransformsType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Transforms", XMLREF = 1);

Property SigPolicyHash As Facturae.xades.DigestAlgAndValueType(XMLNAME = "SigPolicyHash") [ Required ];

Relationship SigPolicyQualifiers As Facturae.xades.AnyType(XMLITEMNAME = "SigPolicyQualifier", XMLNAME = "SigPolicyQualifiers", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = SignaturePolicyIdType ];

Storage Default
{
<Data name="SignaturePolicyIdTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SigPolicyId</Value>
</Value>
<Value name="3">
<Value>Transforms</Value>
</Value>
<Value name="4">
<Value>SigPolicyHash</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.SignaturePoE983D</DataLocation>
<DefaultData>SignaturePolicyIdTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.SignaturePoE983D</IdLocation>
<IndexLocation>^Facturae.x7BF1.SignaturePoE983I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.SignaturePoE983S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
