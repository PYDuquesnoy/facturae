/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.DSAKeyValueType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.xmldsig.CryptoBinary, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "DSAKeyValueType";

Parameter XMLSEQUENCE = 1;

Property P As Facturae.xmldsig.CryptoBinary(XMLNAME = "P") [ Required ];

Property Q As Facturae.xmldsig.CryptoBinary(XMLNAME = "Q") [ Required ];

Property G As Facturae.xmldsig.CryptoBinary(XMLNAME = "G");

Property Y As Facturae.xmldsig.CryptoBinary(XMLNAME = "Y") [ Required ];

Property J As Facturae.xmldsig.CryptoBinary(XMLNAME = "J");

Property Seed As Facturae.xmldsig.CryptoBinary(XMLNAME = "Seed") [ Required ];

Property PgenCounter As Facturae.xmldsig.CryptoBinary(XMLNAME = "PgenCounter") [ Required ];

Storage Default
{
<Data name="DSAKeyValueTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>P</Value>
</Value>
<Value name="3">
<Value>Q</Value>
</Value>
<Value name="4">
<Value>G</Value>
</Value>
<Value name="5">
<Value>Y</Value>
</Value>
<Value name="6">
<Value>J</Value>
</Value>
<Value name="7">
<Value>Seed</Value>
</Value>
<Value name="8">
<Value>PgenCounter</Value>
</Value>
</Data>
<DataLocation>^Facturae.xF88A.DSAKeyValue22EDD</DataLocation>
<DefaultData>DSAKeyValueTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xF88A.DSAKeyValue22EDD</IdLocation>
<IndexLocation>^Facturae.xF88A.DSAKeyValue22EDI</IndexLocation>
<StreamLocation>^Facturae.xF88A.DSAKeyValue22EDS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
