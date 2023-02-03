/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.SignatureProductionPlaceType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "SignatureProductionPlaceType";

Parameter XMLSEQUENCE = 1;

Property City As %String(MAXLEN = "", XMLNAME = "City");

Property StateOrProvince As %String(MAXLEN = "", XMLNAME = "StateOrProvince");

Property PostalCode As %String(MAXLEN = "", XMLNAME = "PostalCode");

Property CountryName As %String(MAXLEN = "", XMLNAME = "CountryName");

Storage Default
{
<Data name="SignatureProductionPlaceTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>City</Value>
</Value>
<Value name="3">
<Value>StateOrProvince</Value>
</Value>
<Value name="4">
<Value>PostalCode</Value>
</Value>
<Value name="5">
<Value>CountryName</Value>
</Value>
</Data>
<DataLocation>^Facturae.x7BF1.SignaturePr1B16D</DataLocation>
<DefaultData>SignatureProductionPlaceTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.x7BF1.SignaturePr1B16D</IdLocation>
<IndexLocation>^Facturae.x7BF1.SignaturePr1B16I</IndexLocation>
<StreamLocation>^Facturae.x7BF1.SignaturePr1B16S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
