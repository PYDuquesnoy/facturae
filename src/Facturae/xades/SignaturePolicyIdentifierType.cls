/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.SignaturePolicyIdentifierType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "SignaturePolicyIdentifierType";

Parameter XMLSEQUENCE = 0;

Property SignaturePolicyId As Facturae.xades.SignaturePolicyIdType(XMLNAME = "SignaturePolicyId");

Property SignaturePolicyImplied As %String(MAXLEN = "", XMLNAME = "SignaturePolicyImplied");

Storage Default
{
<Data name="SignaturePolicyIdentifierTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SignaturePolicyId</Value>
</Value>
<Value name="3">
<Value>SignaturePolicyImplied</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.SignaturePoA1BDD</DataLocation>
<DefaultData>SignaturePolicyIdentifierTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.SignaturePoA1BDD</IdLocation>
<IndexLocation>^Facturae.x7BF1.SignaturePoA1BDI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.SignaturePoA1BDS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
