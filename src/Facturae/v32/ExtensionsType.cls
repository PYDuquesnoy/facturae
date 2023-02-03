/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.ExtensionsType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "ExtensionsType";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="ExtensionsTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>any</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.ExtensionsTypeD</DataLocation>
<DefaultData>ExtensionsTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.ExtensionsTypeD</IdLocation>
<IndexLocation>^Facturae.v32.ExtensionsTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.ExtensionsTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
