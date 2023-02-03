/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.QualifyingPropertiesReferenceType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "QualifyingPropertiesReferenceType";

Parameter XMLSEQUENCE = 1;

Property URI As %xsd.anyURI(XMLNAME = "URI", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="QualifyingPropertiesReferenceTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>URI</Value>
</Value>
<Value name="3">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.QualifyingP30E3D</DataLocation>
<DefaultData>QualifyingPropertiesReferenceTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.QualifyingP30E3D</IdLocation>
<IndexLocation>^Facturae.x7BF1.QualifyingP30E3I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.QualifyingP30E3S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
