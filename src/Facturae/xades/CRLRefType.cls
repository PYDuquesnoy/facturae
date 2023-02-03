/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.CRLRefType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "CRLRefType";

Parameter XMLSEQUENCE = 1;

Property DigestAlgAndValue As Facturae.xades.DigestAlgAndValueType(XMLNAME = "DigestAlgAndValue") [ Required ];

Property CRLIdentifier As Facturae.xades.CRLIdentifierType(XMLNAME = "CRLIdentifier");

Relationship CompleteRevocationRefsType As Facturae.xades.CompleteRevocationRefsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = CRLRefs ];

Storage Default
{
<Data name="CRLRefTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DigestAlgAndValue</Value>
</Value>
<Value name="3">
<Value>CRLIdentifier</Value>
</Value>
<Value name="4">
<Value>CompleteRevocationRefsType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xades.CRLRefTypeD</DataLocation>
<DefaultData>CRLRefTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xades.CRLRefTypeD</IdLocation>
<IndexLocation>^Facturae.xades.CRLRefTypeI</IndexLocation>
<StreamLocation>^Facturae.xades.CRLRefTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
