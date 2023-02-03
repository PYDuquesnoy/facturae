/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.AddressType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.CountryType, Facturae.v32.PostCodeType, Facturae.v32.TextMax20Type, Facturae.v32.TextMax50Type, Facturae.v32.TextMax80Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "AddressType";

Parameter XMLSEQUENCE = 1;

/// Dirección. Tipo de vía, nombre, número, piso…
Property Address As Facturae.v32.TextMax80Type(XMLNAME = "Address") [ Required ];

/// Código Postal asignado por Correos.
Property PostCode As Facturae.v32.PostCodeType(XMLNAME = "PostCode") [ Required ];

/// Población. Correspondiente al C.P.
Property Town As Facturae.v32.TextMax50Type(XMLNAME = "Town") [ Required ];

/// Provincia. Donde está situada la Población.
Property Province As Facturae.v32.TextMax20Type(XMLNAME = "Province") [ Required ];

/// Código País. Código según la ISO 3166-1:2006 Alpha-3. Al ser un domicilio ubicado en España siempre será "ESP".
Property CountryCode As Facturae.v32.CountryType(XMLNAME = "CountryCode") [ Required ];

Storage Default
{
<Data name="AddressTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Address</Value>
</Value>
<Value name="3">
<Value>PostCode</Value>
</Value>
<Value name="4">
<Value>Town</Value>
</Value>
<Value name="5">
<Value>Province</Value>
</Value>
<Value name="6">
<Value>CountryCode</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.AddressTypeD</DataLocation>
<DefaultData>AddressTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.AddressTypeD</IdLocation>
<IndexLocation>^Facturae.v32.AddressTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.AddressTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
