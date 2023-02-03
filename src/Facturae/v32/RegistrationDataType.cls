/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.RegistrationDataType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.TextMax20Type, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "RegistrationDataType";

Parameter XMLSEQUENCE = 1;

/// Libro.
Property Book As Facturae.v32.TextMax20Type(XMLNAME = "Book");

/// Registro Mercantil.
Property RegisterOfCompaniesLocation As Facturae.v32.TextMax20Type(XMLNAME = "RegisterOfCompaniesLocation");

/// Hoja.
Property Sheet As Facturae.v32.TextMax20Type(XMLNAME = "Sheet");

/// Folio.
Property Folio As Facturae.v32.TextMax20Type(XMLNAME = "Folio");

/// Sección.
Property Section As Facturae.v32.TextMax20Type(XMLNAME = "Section") [ SqlFieldName = _Section ];

/// Tomo.
Property Volume As Facturae.v32.TextMax20Type(XMLNAME = "Volume");

/// Otros datos registrales.
Property AdditionalRegistrationData As Facturae.v32.TextMax20Type(XMLNAME = "AdditionalRegistrationData");

Storage Default
{
<Data name="RegistrationDataTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Book</Value>
</Value>
<Value name="3">
<Value>RegisterOfCompaniesLocation</Value>
</Value>
<Value name="4">
<Value>Sheet</Value>
</Value>
<Value name="5">
<Value>Folio</Value>
</Value>
<Value name="6">
<Value>Section</Value>
</Value>
<Value name="7">
<Value>Volume</Value>
</Value>
<Value name="8">
<Value>AdditionalRegistrationData</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.Registratio8607D</DataLocation>
<DefaultData>RegistrationDataTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.Registratio8607D</IdLocation>
<IndexLocation>^Facturae.v32.Registratio8607I</IndexLocation>
<StreamLocation>^Facturae.v32.Registratio8607S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
