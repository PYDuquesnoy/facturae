/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.ObjectIdentifierType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "ObjectIdentifierType";

Parameter XMLSEQUENCE = 1;

Property Identifier As Facturae.xades.IdentifierType(XMLNAME = "Identifier") [ Required ];

Property Description As %String(MAXLEN = "", XMLNAME = "Description");

Property DocumentationReferences As list Of %xsd.anyURI(XMLITEMNAME = "DocumentationReference", XMLNAME = "DocumentationReferences", XMLPROJECTION = "COLLECTION");

Storage Default
{
<Data name="ObjectIdentifierTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Identifier</Value>
</Value>
<Value name="3">
<Value>Description</Value>
</Value>
<Value name="4">
<Value>DocumentationReferences</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.ObjectIdent68CDD</DataLocation>
<DefaultData>ObjectIdentifierTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.ObjectIdent68CDD</IdLocation>
<IndexLocation>^Facturae.x7BF1.ObjectIdent68CDI</IndexLocation>
<StreamLocation>^Facturae.x7BF1.ObjectIdent68CDS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
