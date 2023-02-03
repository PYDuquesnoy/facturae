/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.SignedPropertiesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "SignedPropertiesType";

Parameter XMLSEQUENCE = 1;

Property SignedSignatureProperties As Facturae.xades.SignedSignaturePropertiesType(XMLNAME = "SignedSignatureProperties");

Property SignedDataObjectProperties As Facturae.xades.SignedDataObjectPropertiesType(XMLNAME = "SignedDataObjectProperties");

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="SignedPropertiesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SignedSignatureProperties</Value>
</Value>
<Value name="3">
<Value>SignedDataObjectProperties</Value>
</Value>
<Value name="4">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.SignedPrope2ACBD</DataLocation>
<DefaultData>SignedPropertiesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.SignedPrope2ACBD</IdLocation>
<IndexLocation>^Facturae.x7BF1.SignedPrope2ACBI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.SignedPrope2ACBS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
