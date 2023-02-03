/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.IdentifierType Extends (%SerialObject, %XML.Adaptor) [ CompileAfter = Facturae.xades.QualifierType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "IdentifierType";

Parameter XMLSEQUENCE = 1;

Property content As %xsd.anyURI(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property Qualifier As Facturae.xades.QualifierType(XMLNAME = "Qualifier", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="IdentifierTypeState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>Qualifier</Value>
</Value>
</Data>
<State>IdentifierTypeState</State>
<StreamLocation>^Facturae.xades.IdentifierTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
