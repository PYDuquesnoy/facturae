/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.SignedDataObjectPropertiesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "SignedDataObjectPropertiesType";

Parameter XMLSEQUENCE = 1;

Relationship DataObjectFormat As Facturae.xades.DataObjectFormatType(XMLNAME = "DataObjectFormat", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = SignedDataObjectPropertiesType ];

Relationship CommitmentTypeIndication As Facturae.xades.CommitmentTypeIndicationType(XMLNAME = "CommitmentTypeIndication", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = SignedDataObjectPropertiesType1 ];

Relationship AllDataObjectsTimeStamp As Facturae.xades.XAdESTimeStampType(XMLNAME = "AllDataObjectsTimeStamp", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = SignedDataObjectPropertiesType2 ];

Relationship IndividualDataObjectsTimeStamp As Facturae.xades.XAdESTimeStampType(XMLNAME = "IndividualDataObjectsTimeStamp", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = SignedDataObjectPropertiesType3 ];

Property Id As %String(MAXLEN = "", XMLNAME = "Id", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="SignedDataObjectPropertiesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Id</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.SignedDataO24D7D</DataLocation>
<DefaultData>SignedDataObjectPropertiesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.SignedDataO24D7D</IdLocation>
<IndexLocation>^Facturae.x7BF1.SignedDataO24D7I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.SignedDataO24D7S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
