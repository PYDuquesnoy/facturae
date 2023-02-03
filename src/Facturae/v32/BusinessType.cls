/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.BusinessType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.PartyIdentificationType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "BusinessType";

Parameter XMLSEQUENCE = 0;

/// Identificación fiscal.
Property TaxIdentification As Facturae.v32.TaxIdentificationType(XMLNAME = "TaxIdentification") [ Required ];

/// Identificación de la entidad; Rellenar con el número de referencia de la entidad del programa de facturación que utilice.
Property PartyIdentification As Facturae.v32.PartyIdentificationType(XMLNAME = "PartyIdentification");

/// Centros.
/// Centro.
Relationship AdministrativeCentres As Facturae.v32.AdministrativeCentreType(XMLITEMNAME = "AdministrativeCentre", XMLNAME = "AdministrativeCentres", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = BusinessType ];

/// Persona jurídica y otras.
Property LegalEntity As Facturae.v32.LegalEntityType(XMLNAME = "LegalEntity");

/// Persona física.
Property Individual As Facturae.v32.IndividualType(XMLNAME = "Individual");

Storage Default
{
<Data name="BusinessTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TaxIdentification</Value>
</Value>
<Value name="3">
<Value>PartyIdentification</Value>
</Value>
<Value name="4">
<Value>LegalEntity</Value>
</Value>
<Value name="5">
<Value>Individual</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.BusinessTypeD</DataLocation>
<DefaultData>BusinessTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.BusinessTypeD</IdLocation>
<IndexLocation>^Facturae.v32.BusinessTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.BusinessTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
