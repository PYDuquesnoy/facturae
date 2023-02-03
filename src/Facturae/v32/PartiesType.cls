/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.PartiesType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "PartiesType";

Parameter XMLSEQUENCE = 1;

/// Emisor. Datos básicos del fichero. Son comunes a la factura o facturas que se incluyen.
Property SellerParty As Facturae.v32.BusinessType(XMLNAME = "SellerParty") [ Required ];

/// Receptor. Datos básicos del fichero. Son comunes a la factura o facturas que se incluyen.
Property BuyerParty As Facturae.v32.BusinessType(XMLNAME = "BuyerParty") [ Required ];

Storage Default
{
<Data name="PartiesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SellerParty</Value>
</Value>
<Value name="3">
<Value>BuyerParty</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.PartiesTypeD</DataLocation>
<DefaultData>PartiesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.PartiesTypeD</IdLocation>
<IndexLocation>^Facturae.v32.PartiesTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.PartiesTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
