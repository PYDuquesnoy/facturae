/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.OCSPRefType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "OCSPRefType";

Parameter XMLSEQUENCE = 1;

Property OCSPIdentifier As Facturae.xades.OCSPIdentifierType(XMLNAME = "OCSPIdentifier") [ Required ];

Property DigestAlgAndValue As Facturae.xades.DigestAlgAndValueType(XMLNAME = "DigestAlgAndValue");

Relationship CompleteRevocationRefsType1 As Facturae.xades.CompleteRevocationRefsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = OCSPRefs ];

Storage Default
{
<Data name="OCSPRefTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>OCSPIdentifier</Value>
</Value>
<Value name="3">
<Value>DigestAlgAndValue</Value>
</Value>
<Value name="4">
<Value>CompleteRevocationRefsType1</Value>
</Value>
</Data>
<DataLocation>^Facturae.xades.OCSPRefTypeD</DataLocation>
<DefaultData>OCSPRefTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xades.OCSPRefTypeD</IdLocation>
<IndexLocation>^Facturae.xades.OCSPRefTypeI</IndexLocation>
<StreamLocation>^Facturae.xades.OCSPRefTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
