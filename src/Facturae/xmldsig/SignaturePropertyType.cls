/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.SignaturePropertyType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "SignaturePropertyType";

Parameter XMLSEQUENCE = 0;

Property content As %XML.String(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Property Target As %xsd.anyURI(XMLNAME = "Target", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Relationship SignaturePropertiesType As Facturae.xmldsig.SignaturePropertiesType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = SignatureProperty ];

Storage Default
{
<Data name="SignaturePropertyTypeDefaultData">
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
<Value>Target</Value>
</Value>
<Value name="5">
<Value>Id</Value>
</Value>
<Value name="6">
<Value>SignaturePropertiesType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xF88A.SignaturePr1F69D</DataLocation>
<DefaultData>SignaturePropertyTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xF88A.SignaturePr1F69D</IdLocation>
<IndexLocation>^Facturae.xF88A.SignaturePr1F69I</IndexLocation>
<StreamLocation>^Facturae.xF88A.SignaturePr1F69S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
