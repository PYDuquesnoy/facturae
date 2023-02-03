/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.ContactDetailsType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.CnoCnaeType, Facturae.v32.TextMax15Type, Facturae.v32.TextMax40Type, Facturae.v32.TextMax60Type, Facturae.v32.TextMax9Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "ContactDetailsType";

Parameter XMLSEQUENCE = 1;

/// Teléfono. Número de teléfono completo con prefijos del país.
Property Telephone As Facturae.v32.TextMax15Type(XMLNAME = "Telephone");

/// Fax. Número de fax completo con prefijos del país.
Property TeleFax As Facturae.v32.TextMax15Type(XMLNAME = "TeleFax");

/// Página web. URL de la dirección de Internet.
Property WebAddress As Facturae.v32.TextMax60Type(XMLNAME = "WebAddress");

/// Correo electrónico. Dirección de correo electrónico.
Property ElectronicMail As Facturae.v32.TextMax60Type(XMLNAME = "ElectronicMail");

/// Contactos. Apellidos y Nombre/Razón Social.
Property ContactPersons As Facturae.v32.TextMax40Type(XMLNAME = "ContactPersons");

/// CNO/CNAE. Código Asignado por el INE.
Property CnoCnae As Facturae.v32.CnoCnaeType(XMLNAME = "CnoCnae");

/// Código de población asignado por el INE.
Property INETownCode As Facturae.v32.TextMax9Type(XMLNAME = "INETownCode");

/// Otros datos de contacto.
Property AdditionalContactDetails As Facturae.v32.TextMax60Type(XMLNAME = "AdditionalContactDetails");

Storage Default
{
<Data name="ContactDetailsTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Telephone</Value>
</Value>
<Value name="3">
<Value>TeleFax</Value>
</Value>
<Value name="4">
<Value>WebAddress</Value>
</Value>
<Value name="5">
<Value>ElectronicMail</Value>
</Value>
<Value name="6">
<Value>ContactPersons</Value>
</Value>
<Value name="7">
<Value>CnoCnae</Value>
</Value>
<Value name="8">
<Value>INETownCode</Value>
</Value>
<Value name="9">
<Value>AdditionalContactDetails</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.ContactDeta7E66D</DataLocation>
<DefaultData>ContactDetailsTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.ContactDeta7E66D</IdLocation>
<IndexLocation>^Facturae.v32.ContactDeta7E66I</IndexLocation>
<StreamLocation>^Facturae.v32.ContactDeta7E66S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
