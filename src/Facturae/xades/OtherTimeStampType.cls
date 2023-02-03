/// This class is a restriction of GenericTimeStampType
/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.OtherTimeStampType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "OtherTimeStampType";

Parameter XMLSEQUENCE = 0;

Relationship ReferenceInfo As Facturae.xades.ReferenceInfoType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://uri.etsi.org/01903/v1.3.2#", XMLNAME = "ReferenceInfo", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = OtherTimeStampType ];

Property CanonicalizationMethod As Facturae.xmldsig.CanonicalizationMethodType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "CanonicalizationMethod", XMLREF = 1);

Property EncapsulatedTimeStamp As Facturae.xades.EncapsulatedPKIDataType(XMLNAME = "EncapsulatedTimeStamp");

Property XMLTimeStamp As Facturae.xades.AnyType(XMLNAME = "XMLTimeStamp");

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="OtherTimeStampTypeDefaultData">
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
<Value>XMLTimeStamp</Value>
</Value>
<Value name="5">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.OtherTimeStB3CED</DataLocation>
<DefaultData>OtherTimeStampTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.OtherTimeStB3CED</IdLocation>
<IndexLocation>^Facturae.x7BF1.OtherTimeStB3CEI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.OtherTimeStB3CES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
