/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.TaxIdentificationType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.PersonTypeCodeType, Facturae.v32.ResidenceTypeCodeType, Facturae.v32.TextMin3Max30Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "TaxIdentificationType";

Parameter XMLSEQUENCE = 1;

/// Tipo de persona. Física o Jurídica. "F" - Física; "J" - Jurídica.
Property PersonTypeCode As Facturae.v32.PersonTypeCodeType(XMLNAME = "PersonTypeCode") [ Required ];

/// Identificación del tipo de residencia y/o extranjería. "E" - Extranjero; "R" - Residente; "U" - Residente en la Unión Europea.
Property ResidenceTypeCode As Facturae.v32.ResidenceTypeCodeType(XMLNAME = "ResidenceTypeCode") [ Required ];

/// Código de Identificación Fiscal del sujeto. Se trata de las composiciones de NIF/CIF que marca la Administración correspondiente (precedidas de las dos letras del país en el caso de operaciones intracomunitarias, es decir, cuando comprador y vendedor tienen domicilio fiscal en estados miembros de la UE distintos).
Property TaxIdentificationNumber As Facturae.v32.TextMin3Max30Type(XMLNAME = "TaxIdentificationNumber") [ Required ];

Storage Default
{
<Data name="TaxIdentificationTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PersonTypeCode</Value>
</Value>
<Value name="3">
<Value>ResidenceTypeCode</Value>
</Value>
<Value name="4">
<Value>TaxIdentificationNumber</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.TaxIdentifiAE61D</DataLocation>
<DefaultData>TaxIdentificationTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.TaxIdentifiAE61D</IdLocation>
<IndexLocation>^Facturae.v32.TaxIdentifiAE61I</IndexLocation>
<StreamLocation>^Facturae.v32.TaxIdentifiAE61S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
