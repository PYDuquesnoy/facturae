/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.PGPDataType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "PGPDataType";

Parameter XMLSEQUENCE = 0;

Property PGPKeyID As %xsd.base64Binary(XMLNAME = "PGPKeyID");

Property PGPKeyPacket As %xsd.base64Binary(XMLNAME = "PGPKeyPacket");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

/// ERROR: Duplicate Property name in Schema. 
Property PGPKeyPacket1 As %xsd.base64Binary(XMLNAME = "PGPKeyPacket");

/// ERROR: Duplicate Property name in Schema. 
Property any1 As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY");

Relationship KeyInfoType3 As Facturae.xmldsig.KeyInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = PGPData ];

Storage Default
{
<Data name="PGPDataTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PGPKeyID</Value>
</Value>
<Value name="3">
<Value>PGPKeyPacket</Value>
</Value>
<Value name="4">
<Value>any</Value>
</Value>
<Value name="5">
<Value>PGPKeyPacket1</Value>
</Value>
<Value name="6">
<Value>any1</Value>
</Value>
<Value name="7">
<Value>KeyInfoType3</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmldsig.PGPDataTypeD</DataLocation>
<DefaultData>PGPDataTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmldsig.PGPDataTypeD</IdLocation>
<IndexLocation>^Facturae.xmldsig.PGPDataTypeI</IndexLocation>
<StreamLocation>^Facturae.xmldsig.PGPDataTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
