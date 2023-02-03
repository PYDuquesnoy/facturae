/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.X509IssuerSerialType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "X509IssuerSerialType";

Parameter XMLSEQUENCE = 1;

Property X509IssuerName As %String(MAXLEN = "", XMLNAME = "X509IssuerName") [ Required ];

Property X509SerialNumber As %Integer(XMLNAME = "X509SerialNumber") [ Required ];

Relationship X509DataType As Facturae.xmldsig.X509DataType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = X509IssuerSerial ];

Storage Default
{
<Data name="X509IssuerSerialTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>X509IssuerName</Value>
</Value>
<Value name="3">
<Value>X509SerialNumber</Value>
</Value>
<Value name="4">
<Value>X509DataType</Value>
</Value>
</Data>
<DataLocation>^Facturae.xF88A.X509IssuerSE2ECD</DataLocation>
<DefaultData>X509IssuerSerialTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xF88A.X509IssuerSE2ECD</IdLocation>
<IndexLocation>^Facturae.xF88A.X509IssuerSE2ECI</IndexLocation>
<StreamLocation>^Facturae.xF88A.X509IssuerSE2ECS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
