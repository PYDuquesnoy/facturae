/// This class is a restriction of GenericTimeStampType
/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.XAdESTimeStampType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "XAdESTimeStampType";

Parameter XMLSEQUENCE = 0;

Relationship Include As Facturae.xades.IncludeType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://uri.etsi.org/01903/v1.3.2#", XMLNAME = "Include", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = XAdESTimeStampType ];

Property CanonicalizationMethod As Facturae.xmldsig.CanonicalizationMethodType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "CanonicalizationMethod", XMLREF = 1);

Property EncapsulatedTimeStamp As list Of Facturae.xades.EncapsulatedPKIDataType(XMLNAME = "EncapsulatedTimeStamp", XMLPROJECTION = "ELEMENT");

Relationship XMLTimeStamp As Facturae.xades.AnyType(XMLNAME = "XMLTimeStamp", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = XAdESTimeStampType1 ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Relationship SignedDataObjectPropertiesType2 As Facturae.xades.SignedDataObjectPropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AllDataObjectsTimeStamp ];

Relationship SignedDataObjectPropertiesType3 As Facturae.xades.SignedDataObjectPropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = IndividualDataObjectsTimeStamp ];

Relationship UnsignedSignaturePropertiesType1 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = SignatureTimeStamp ];

Relationship UnsignedSignaturePropertiesType6 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = SigAndRefsTimeStamp ];

Relationship UnsignedSignaturePropertiesType7 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = RefsOnlyTimeStamp ];

Relationship UnsignedSignaturePropertiesType12 As Facturae.xades.UnsignedSignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ArchiveTimeStamp ];

Storage Default
{
<Data name="XAdESTimeStampTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CanonicalizationMethod</Value>
</Value>
<Value name="3">
<Value>EncapsulatedTimeStamp</Value>
</Value>
<Value name="4">
<Value>Id</Value>
</Value>
<Value name="5">
<Value>SignedDataObjectPropertiesType2</Value>
</Value>
<Value name="6">
<Value>SignedDataObjectPropertiesType3</Value>
</Value>
<Value name="7">
<Value>UnsignedSignaturePropertiesType1</Value>
</Value>
<Value name="8">
<Value>UnsignedSignaturePropertiesType6</Value>
</Value>
<Value name="9">
<Value>UnsignedSignaturePropertiesType7</Value>
</Value>
<Value name="10">
<Value>UnsignedSignaturePropertiesType12</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.XAdESTimeSt6178D</DataLocation>
<DefaultData>XAdESTimeStampTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.XAdESTimeSt6178D</IdLocation>
<IndexLocation>^Facturae.x7BF1.XAdESTimeSt6178I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.XAdESTimeSt6178S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
