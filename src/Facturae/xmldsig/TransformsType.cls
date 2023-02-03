/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.TransformsType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "TransformsType";

Parameter XMLSEQUENCE = 1;

Relationship Transform As Facturae.xmldsig.TransformType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Transform", XMLPROJECTION = "ELEMENT", XMLREF = 1) [ Cardinality = many, Inverse = TransformsType ];

Storage Default
{
<Data name="TransformsTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmF88A.TransformsTypeD</DataLocation>
<DefaultData>TransformsTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmF88A.TransformsTypeD</IdLocation>
<IndexLocation>^Facturae.xmF88A.TransformsTypeI</IndexLocation>
<StreamLocation>^Facturae.xmF88A.TransformsTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
