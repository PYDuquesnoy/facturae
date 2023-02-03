/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.ManifestType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "ManifestType";

Parameter XMLSEQUENCE = 1;

Relationship Reference As Facturae.xmldsig.ReferenceType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Reference", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = ManifestType ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="ManifestTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmldsig.ManifestTypeD</DataLocation>
<DefaultData>ManifestTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmldsig.ManifestTypeD</IdLocation>
<IndexLocation>^Facturae.xmldsig.ManifestTypeI</IndexLocation>
<StreamLocation>^Facturae.xmldsig.ManifestTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
