/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.GenericTimeStampType Extends (%Persistent, %XML.Adaptor) [ Abstract, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "GenericTimeStampType";

Parameter XMLSEQUENCE = 0;

Relationship Include As Facturae.xades.IncludeType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://uri.etsi.org/01903/v1.3.2#", XMLNAME = "Include", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = GenericTimeStampType ];

Relationship ReferenceInfo As Facturae.xades.ReferenceInfoType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://uri.etsi.org/01903/v1.3.2#", XMLNAME = "ReferenceInfo", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = GenericTimeStampType1 ];

Property CanonicalizationMethod As Facturae.xmldsig.CanonicalizationMethodType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "CanonicalizationMethod", XMLREF = 1);

Property EncapsulatedTimeStamp As list Of Facturae.xades.EncapsulatedPKIDataType(XMLNAME = "EncapsulatedTimeStamp", XMLPROJECTION = "ELEMENT");

Relationship XMLTimeStamp As Facturae.xades.AnyType(XMLNAME = "XMLTimeStamp", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = GenericTimeStampType2 ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="GenericTimeStampTypeDefaultData">
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
</Data>
<DataLocation>^Facturae.x7BF1.GenericTime13B7D</DataLocation>
<DefaultData>GenericTimeStampTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.GenericTime13B7D</IdLocation>
<IndexLocation>^Facturae.x7BF1.GenericTime13B7I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.GenericTime13B7S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
