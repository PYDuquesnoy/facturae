/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.NoticeReferenceType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "NoticeReferenceType";

Parameter XMLSEQUENCE = 1;

Property Organization As %String(MAXLEN = "", XMLNAME = "Organization") [ Required ];

Property NoticeNumbers As list Of %Integer(XMLITEMNAME = "int", XMLNAME = "NoticeNumbers", XMLPROJECTION = "COLLECTION") [ Required ];

Storage Default
{
<Data name="NoticeReferenceTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Organization</Value>
</Value>
<Value name="3">
<Value>NoticeNumbers</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.NoticeRefer5471D</DataLocation>
<DefaultData>NoticeReferenceTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.NoticeRefer5471D</IdLocation>
<IndexLocation>^Facturae.x7BF1.NoticeRefer5471I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.NoticeRefer5471S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
