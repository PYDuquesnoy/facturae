/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.UnsignedDataObjectPropertiesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "UnsignedDataObjectPropertiesType";

Parameter XMLSEQUENCE = 1;

Relationship UnsignedDataObjectProperty As Facturae.xades.AnyType(XMLNAME = "UnsignedDataObjectProperty", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = UnsignedDataObjectPropertiesType ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="UnsignedDataObjectPropertiesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.UnsignedDat4920D</DataLocation>
<DefaultData>UnsignedDataObjectPropertiesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.UnsignedDat4920D</IdLocation>
<IndexLocation>^Facturae.x7BF1.UnsignedDat4920I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.UnsignedDat4920S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
