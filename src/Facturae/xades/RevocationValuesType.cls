/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.RevocationValuesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "RevocationValuesType";

Parameter XMLSEQUENCE = 1;

Property CRLValues As list Of Facturae.xades.EncapsulatedPKIDataType(XMLITEMNAME = "EncapsulatedCRLValue", XMLNAME = "CRLValues", XMLPROJECTION = "COLLECTION");

Property OCSPValues As list Of Facturae.xades.EncapsulatedPKIDataType(XMLITEMNAME = "EncapsulatedOCSPValue", XMLNAME = "OCSPValues", XMLPROJECTION = "COLLECTION");

Relationship OtherValues As Facturae.xades.AnyType(XMLITEMNAME = "OtherValue", XMLNAME = "OtherValues", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = RevocationValuesType ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Relationship UnsignedSignaturePropertiesType9 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = RevocationValues ];

Relationship UnsignedSignaturePropertiesType11 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AttributeRevocationValues ];

Storage Default
{
<Data name="RevocationValuesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CRLValues</Value>
</Value>
<Value name="3">
<Value>OCSPValues</Value>
</Value>
<Value name="4">
<Value>Id</Value>
</Value>
<Value name="5">
<Value>UnsignedSignaturePropertiesType9</Value>
</Value>
<Value name="6">
<Value>UnsignedSignaturePropertiesType11</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.RevocationV1E33D</DataLocation>
<DefaultData>RevocationValuesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.RevocationV1E33D</IdLocation>
<IndexLocation>^Facturae.x7BF1.RevocationV1E33I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.RevocationV1E33S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
