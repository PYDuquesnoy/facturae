/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.IndividualType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.TextMax40Type, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "IndividualType";

Parameter XMLSEQUENCE = 0;

/// Nombre de la persona física.
Property Name As Facturae.v32.TextMax40Type(XMLNAME = "Name") [ Required ];

/// Primer apellido de la persona física.
Property FirstSurname As Facturae.v32.TextMax40Type(XMLNAME = "FirstSurname") [ Required ];

/// Segundo apellido de la persona física.
Property SecondSurname As Facturae.v32.TextMax40Type(XMLNAME = "SecondSurname");

/// Dirección nacional. Dirección en España.
Property AddressInSpain As Facturae.v32.AddressType(XMLNAME = "AddressInSpain");

/// Dirección en el extranjero.
Property OverseasAddress As Facturae.v32.OverseasAddressType(XMLNAME = "OverseasAddress");

/// Datos de contacto.
Property ContactDetails As Facturae.v32.ContactDetailsType(XMLNAME = "ContactDetails");

Storage Default
{
<Data name="IndividualTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>FirstSurname</Value>
</Value>
<Value name="4">
<Value>SecondSurname</Value>
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
<DataLocation>^Facturae.v32.IndividualTypeD</DataLocation>
<DefaultData>IndividualTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.IndividualTypeD</IdLocation>
<IndexLocation>^Facturae.v32.IndividualTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.IndividualTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
