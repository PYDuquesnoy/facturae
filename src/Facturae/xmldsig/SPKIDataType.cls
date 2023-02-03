/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.SPKIDataType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "SPKIDataType";

Parameter XMLSEQUENCE = 0;

Property SPKISexp As list Of %xsd.base64Binary(XMLNAME = "SPKISexp", XMLPROJECTION = "ELEMENT") [ Required ];

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Relationship KeyInfoType4 As Facturae.xmldsig.KeyInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = SPKIData ];

Storage Default
{
<Data name="SPKIDataTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SPKISexp</Value>
</Value>
<Value name="3">
<Value>any</Value>
</Value>
<Value name="4">
<Value>KeyInfoType4</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmldsig.SPKIDataTypeD</DataLocation>
<DefaultData>SPKIDataTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmldsig.SPKIDataTypeD</IdLocation>
<IndexLocation>^Facturae.xmldsig.SPKIDataTypeI</IndexLocation>
<StreamLocation>^Facturae.xmldsig.SPKIDataTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
