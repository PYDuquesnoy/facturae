/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.LegalEntityType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.TextMax40Type, Facturae.v32.TextMax80Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "LegalEntityType";

Parameter XMLSEQUENCE = 0;

/// Razón Social.
Property CorporateName As Facturae.v32.TextMax80Type(XMLNAME = "CorporateName") [ Required ];

/// Nombre Comercial.
Property TradeName As Facturae.v32.TextMax40Type(XMLNAME = "TradeName");

/// Datos Registrales: Inscripción Registro, Tomo, Folio,…
Property RegistrationData As Facturae.v32.RegistrationDataType(XMLNAME = "RegistrationData");

/// Dirección Nacional. Dirección en España.
Property AddressInSpain As Facturae.v32.AddressType(XMLNAME = "AddressInSpain");

/// Dirección en el extranjero.
Property OverseasAddress As Facturae.v32.OverseasAddressType(XMLNAME = "OverseasAddress");

/// Datos de contacto.
Property ContactDetails As Facturae.v32.ContactDetailsType(XMLNAME = "ContactDetails");

Storage Default
{
<Data name="LegalEntityTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CorporateName</Value>
</Value>
<Value name="3">
<Value>TradeName</Value>
</Value>
<Value name="4">
<Value>RegistrationData</Value>
</Value>
<Value name="5">
<Value>AddressInSpain</Value>
</Value>
<Value name="6">
<Value>OverseasAddress</Value>
</Value>
<Value name="7">
<Value>ContactDetails</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.LegalEntityTypeD</DataLocation>
<DefaultData>LegalEntityTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.LegalEntityTypeD</IdLocation>
<IndexLocation>^Facturae.v32.LegalEntityTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.LegalEntityTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
