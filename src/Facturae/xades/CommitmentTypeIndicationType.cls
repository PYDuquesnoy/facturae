/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.CommitmentTypeIndicationType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "CommitmentTypeIndicationType";

Parameter XMLSEQUENCE = 0;

Property CommitmentTypeId As Facturae.xades.ObjectIdentifierType(XMLNAME = "CommitmentTypeId") [ Required ];

Property ObjectReference As list Of %xsd.anyURI(XMLNAME = "ObjectReference", XMLPROJECTION = "ELEMENT");

Property AllSignedDataObjects As %String(MAXLEN = "", XMLNAME = "AllSignedDataObjects");

Relationship CommitmentTypeQualifiers As Facturae.xades.AnyType(XMLITEMNAME = "CommitmentTypeQualifier", XMLNAME = "CommitmentTypeQualifiers", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = CommitmentTypeIndicationType ];

Relationship SignedDataObjectPropertiesType1 As Facturae.xades.SignedDataObjectPropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = CommitmentTypeIndication ];

Storage Default
{
<Data name="CommitmentTypeIndicationTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CommitmentTypeId</Value>
</Value>
<Value name="3">
<Value>ObjectReference</Value>
</Value>
<Value name="4">
<Value>AllSignedDataObjects</Value>
</Value>
<Value name="5">
<Value>SignedDataObjectPropertiesType1</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.CommitmentT373BD</DataLocation>
<DefaultData>CommitmentTypeIndicationTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.CommitmentT373BD</IdLocation>
<IndexLocation>^Facturae.x7BF1.CommitmentT373BI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.CommitmentT373BS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
