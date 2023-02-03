/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.EncapsulatedPKIDataType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "EncapsulatedPKIDataType";

Parameter XMLSEQUENCE = 1;

Property content As %xsd.base64Binary(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Property Encoding As %xsd.anyURI(XMLNAME = "Encoding", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="EncapsulatedPKIDataTypeState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>Id</Value>
</Value>
<Value name="3">
<Value>Encoding</Value>
</Value>
</Data>
<State>EncapsulatedPKIDataTypeState</State>
<StreamLocation>^Facturae.x7BF1.Encapsulate8F61S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
