/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.QualifyingPropertiesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "QualifyingPropertiesType";

Parameter XMLSEQUENCE = 1;

Property SignedProperties As Facturae.xades.SignedPropertiesType(XMLNAME = "SignedProperties");

Property UnsignedProperties As Facturae.xades.UnsignedPropertiesType(XMLNAME = "UnsignedProperties");

Property Target As %xsd.anyURI(XMLNAME = "Target", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="QualifyingPropertiesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SignedProperties</Value>
</Value>
<Value name="3">
<Value>UnsignedProperties</Value>
</Value>
<Value name="4">
<Value>Target</Value>
</Value>
<Value name="5">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.QualifyingP5FBCD</DataLocation>
<DefaultData>QualifyingPropertiesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.QualifyingP5FBCD</IdLocation>
<IndexLocation>^Facturae.x7BF1.QualifyingP5FBCI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.QualifyingP5FBCS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
