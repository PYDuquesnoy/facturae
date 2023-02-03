/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.UnsignedPropertiesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "UnsignedPropertiesType";

Parameter XMLSEQUENCE = 1;

Property UnsignedSignatureProperties As Facturae.xades.UnsignedSignaturePropertiesType(XMLNAME = "UnsignedSignatureProperties");

Property UnsignedDataObjectProperties As Facturae.xades.UnsignedDataObjectPropertiesType(XMLNAME = "UnsignedDataObjectProperties");

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="UnsignedPropertiesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UnsignedSignatureProperties</Value>
</Value>
<Value name="3">
<Value>UnsignedDataObjectProperties</Value>
</Value>
<Value name="4">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.UnsignedProC30AD</DataLocation>
<DefaultData>UnsignedPropertiesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.UnsignedProC30AD</IdLocation>
<IndexLocation>^Facturae.x7BF1.UnsignedProC30AI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.UnsignedProC30AS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
