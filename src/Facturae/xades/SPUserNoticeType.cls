/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.SPUserNoticeType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "SPUserNoticeType";

Parameter XMLSEQUENCE = 1;

Property NoticeRef As Facturae.xades.NoticeReferenceType(XMLNAME = "NoticeRef");

Property ExplicitText As %String(MAXLEN = "", XMLNAME = "ExplicitText");

Storage Default
{
<Data name="SPUserNoticeTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>NoticeRef</Value>
</Value>
<Value name="3">
<Value>ExplicitText</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.SPUserNotic39FAD</DataLocation>
<DefaultData>SPUserNoticeTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.SPUserNotic39FAD</IdLocation>
<IndexLocation>^Facturae.x7BF1.SPUserNotic39FAI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.SPUserNotic39FAS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
