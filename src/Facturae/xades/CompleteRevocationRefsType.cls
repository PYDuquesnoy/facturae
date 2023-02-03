/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.CompleteRevocationRefsType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "CompleteRevocationRefsType";

Parameter XMLSEQUENCE = 1;

Relationship CRLRefs As Facturae.xades.CRLRefType(XMLITEMNAME = "CRLRef", XMLNAME = "CRLRefs", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = CompleteRevocationRefsType ];

Relationship OCSPRefs As Facturae.xades.OCSPRefType(XMLITEMNAME = "OCSPRef", XMLNAME = "OCSPRefs", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = CompleteRevocationRefsType1 ];

Relationship OtherRefs As Facturae.xades.AnyType(XMLITEMNAME = "OtherRef", XMLNAME = "OtherRefs", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = CompleteRevocationRefsType2 ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Relationship UnsignedSignaturePropertiesType3 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = CompleteRevocationRefs ];

Relationship UnsignedSignaturePropertiesType5 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AttributeRevocationRefs ];

Storage Default
{
<Data name="CompleteRevocationRefsTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Id</Value>
</Value>
<Value name="3">
<Value>UnsignedSignaturePropertiesType3</Value>
</Value>
<Value name="4">
<Value>UnsignedSignaturePropertiesType5</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.CompleteRevC511D</DataLocation>
<DefaultData>CompleteRevocationRefsTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.CompleteRevC511D</IdLocation>
<IndexLocation>^Facturae.x7BF1.CompleteRevC511I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.CompleteRevC511S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
