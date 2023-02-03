/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.RSAKeyValueType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.xmldsig.CryptoBinary, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "RSAKeyValueType";

Parameter XMLSEQUENCE = 1;

Property Modulus As Facturae.xmldsig.CryptoBinary(XMLNAME = "Modulus") [ Required ];

Property Exponent As Facturae.xmldsig.CryptoBinary(XMLNAME = "Exponent") [ Required ];

Storage Default
{
<Data name="RSAKeyValueTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Modulus</Value>
</Value>
<Value name="3">
<Value>Exponent</Value>
</Value>
</Data>
<DataLocation>^Facturae.xF88A.RSAKeyValue2C7BD</DataLocation>
<DefaultData>RSAKeyValueTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xF88A.RSAKeyValue2C7BD</IdLocation>
<IndexLocation>^Facturae.xF88A.RSAKeyValue2C7BI</IndexLocation>
<StreamLocation>^Facturae.xF88A.RSAKeyValue2C7BS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
