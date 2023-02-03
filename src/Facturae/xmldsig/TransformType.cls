/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.TransformType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "TransformType";

Parameter XMLSEQUENCE = 0;

Property content As %XML.String(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Property XPath As list Of %String(MAXLEN = "", XMLNAME = "XPath", XMLPROJECTION = "ELEMENT");

Property Algorithm As %xsd.anyURI(XMLNAME = "Algorithm", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Relationship TransformsType As Facturae.xmldsig.TransformsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Transform ];

Storage Default
{
<Data name="TransformTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
<Value name="3">
<Value>any</Value>
</Value>
<Value name="4">
<Value>XPath</Value>
</Value>
<Value name="5">
<Value>Algorithm</Value>
</Value>
<Value name="6">
<Value>TransformsType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmlF88A.TransformTypeD</DataLocation>
<DefaultData>TransformTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmlF88A.TransformTypeD</IdLocation>
<IndexLocation>^Facturae.xmlF88A.TransformTypeI</IndexLocation>
<StreamLocation>^Facturae.xmlF88A.TransformTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
