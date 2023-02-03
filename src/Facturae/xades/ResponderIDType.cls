/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.ResponderIDType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "ResponderIDType";

Parameter XMLSEQUENCE = 0;

Property ByName As %String(MAXLEN = "", XMLNAME = "ByName");

Property ByKey As %xsd.base64Binary(XMLNAME = "ByKey");

Storage Default
{
<Data name="ResponderIDTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ByName</Value>
</Value>
<Value name="3">
<Value>ByKey</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.ResponderIDTC34D</DataLocation>
<DefaultData>ResponderIDTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.ResponderIDTC34D</IdLocation>
<IndexLocation>^Facturae.x7BF1.ResponderIDTC34I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.ResponderIDTC34S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
