/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.SignatureValueType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "SignatureValueType";

Parameter XMLSEQUENCE = 1;

Property content As %xsd.base64Binary(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="SignatureValueTypeState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>Id</Value>
</Value>
</Data>
<State>SignatureValueTypeState</State>
<StreamLocation>^Facturae.xF88A.SignatureVaB06AS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
