/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.CounterSignatureType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "CounterSignatureType";

Parameter XMLSEQUENCE = 1;

Property Signature As Facturae.xmldsig.SignatureType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Signature", XMLREF = 1) [ Required ];

Relationship UnsignedSignaturePropertiesType As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = CounterSignature ];

Storage Default
{
<Data name="CounterSignatureTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Signature</Value>
</Value>
<Value name="3">
<Value>UnsignedSignaturePropertiesType</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.CounterSign9F0FD</DataLocation>
<DefaultData>CounterSignatureTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.CounterSign9F0FD</IdLocation>
<IndexLocation>^Facturae.x7BF1.CounterSign9F0FI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.CounterSign9F0FS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
