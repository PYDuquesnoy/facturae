/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.OverseasAddressType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.CountryType, Facturae.v32.TextMax20Type, Facturae.v32.TextMax50Type, Facturae.v32.TextMax80Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "OverseasAddressType";

Parameter XMLSEQUENCE = 1;

/// Dirección. Tipo de vía, nombre, número, piso....
Property Address As Facturae.v32.TextMax80Type(XMLNAME = "Address") [ Required ];

/// Población y Código Postal en el extranjero.
Property PostCodeAndTown As Facturae.v32.TextMax50Type(XMLNAME = "PostCodeAndTown") [ Required ];

/// Provincia, Estado, etc.
Property Province As Facturae.v32.TextMax20Type(XMLNAME = "Province") [ Required ];

/// Código País. Código según la ISO 3166-1:2006 Alpha-3.
Property CountryCode As Facturae.v32.CountryType(XMLNAME = "CountryCode") [ Required ];

Storage Default
{
<Data name="OverseasAddressTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Address</Value>
</Value>
<Value name="3">
<Value>PostCodeAndTown</Value>
</Value>
<Value name="4">
<Value>Province</Value>
</Value>
<Value name="5">
<Value>CountryCode</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.OverseasAddFDA7D</DataLocation>
<DefaultData>OverseasAddressTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.OverseasAddFDA7D</IdLocation>
<IndexLocation>^Facturae.v32.OverseasAddFDA7I</IndexLocation>
<StreamLocation>^Facturae.v32.OverseasAddFDA7S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
