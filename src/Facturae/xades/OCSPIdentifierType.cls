/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.OCSPIdentifierType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "OCSPIdentifierType";

Parameter XMLSEQUENCE = 1;

Property ResponderID As Facturae.xades.ResponderIDType(XMLNAME = "ResponderID") [ Required ];

Property ProducedAt As %TimeStamp(XMLNAME = "ProducedAt") [ Required ];

Property URI As %xsd.anyURI(XMLNAME = "URI", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="OCSPIdentifierTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ResponderID</Value>
</Value>
<Value name="3">
<Value>ProducedAt</Value>
</Value>
<Value name="4">
<Value>URI</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.OCSPIdentif8AA1D</DataLocation>
<DefaultData>OCSPIdentifierTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.OCSPIdentif8AA1D</IdLocation>
<IndexLocation>^Facturae.x7BF1.OCSPIdentif8AA1I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.OCSPIdentif8AA1S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
