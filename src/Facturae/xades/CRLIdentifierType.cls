/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.CRLIdentifierType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "CRLIdentifierType";

Parameter XMLSEQUENCE = 1;

Property Issuer As %String(MAXLEN = "", XMLNAME = "Issuer") [ Required ];

Property IssueTime As %TimeStamp(XMLNAME = "IssueTime") [ Required ];

Property Number As %Integer(XMLNAME = "Number");

Property URI As %xsd.anyURI(XMLNAME = "URI", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="CRLIdentifierTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Issuer</Value>
</Value>
<Value name="3">
<Value>IssueTime</Value>
</Value>
<Value name="4">
<Value>Number</Value>
</Value>
<Value name="5">
<Value>URI</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.CRLIdentifiD05AD</DataLocation>
<DefaultData>CRLIdentifierTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.CRLIdentifiD05AD</IdLocation>
<IndexLocation>^Facturae.x7BF1.CRLIdentifiD05AI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.CRLIdentifiD05AS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
