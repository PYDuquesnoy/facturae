/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.RetrievalMethodType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "RetrievalMethodType";

Parameter XMLSEQUENCE = 1;

Property Transforms As Facturae.xmldsig.TransformsType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Transforms", XMLREF = 1);

Property URI As %xsd.anyURI(XMLNAME = "URI", XMLPROJECTION = "ATTRIBUTE");

Property Type As %xsd.anyURI(XMLNAME = "Type", XMLPROJECTION = "ATTRIBUTE");

Relationship KeyInfoType1 As Facturae.xmldsig.KeyInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = RetrievalMethod ];

Storage Default
{
<Data name="RetrievalMethodTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Transforms</Value>
</Value>
<Value name="3">
<Value>URI</Value>
</Value>
<Value name="4">
<Value>Type</Value>
</Value>
<Value name="5">
<Value>KeyInfoType1</Value>
</Value>
</Data>
<DataLocation>^Facturae.xF88A.RetrievalMeAF14D</DataLocation>
<DefaultData>RetrievalMethodTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xF88A.RetrievalMeAF14D</IdLocation>
<IndexLocation>^Facturae.xF88A.RetrievalMeAF14I</IndexLocation>
<StreamLocation>^Facturae.xF88A.RetrievalMeAF14S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
