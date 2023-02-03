/// Created from: http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
Class Facturae.xmldsig.X509DataType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Parameter XMLNAME = "X509DataType";

Parameter XMLSEQUENCE = 0;

Relationship X509IssuerSerial As Facturae.xmldsig.X509IssuerSerialType(XMLNAME = "X509IssuerSerial", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = X509DataType ];

Property X509SKI As list Of %xsd.base64Binary(XMLNAME = "X509SKI", XMLPROJECTION = "ELEMENT");

Property X509SubjectName As list Of %String(MAXLEN = "", XMLNAME = "X509SubjectName", XMLPROJECTION = "ELEMENT");

Property X509Certificate As list Of %xsd.base64Binary(XMLNAME = "X509Certificate", XMLPROJECTION = "ELEMENT");

Property X509CRL As list Of %xsd.base64Binary(XMLNAME = "X509CRL", XMLPROJECTION = "ELEMENT");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Relationship KeyInfoType2 As Facturae.xmldsig.KeyInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = X509Data ];

Storage Default
{
<Data name="X509DataTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>X509SKI</Value>
</Value>
<Value name="3">
<Value>X509SubjectName</Value>
</Value>
<Value name="4">
<Value>X509Certificate</Value>
</Value>
<Value name="5">
<Value>X509CRL</Value>
</Value>
<Value name="6">
<Value>any</Value>
</Value>
<Value name="7">
<Value>KeyInfoType2</Value>
</Value>
</Data>
<DataLocation>^Facturae.xmldsig.X509DataTypeD</DataLocation>
<DefaultData>X509DataTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xmldsig.X509DataTypeD</IdLocation>
<IndexLocation>^Facturae.xmldsig.X509DataTypeI</IndexLocation>
<StreamLocation>^Facturae.xmldsig.X509DataTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
