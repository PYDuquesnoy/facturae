/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.AssigneeType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "AssigneeType";

Parameter XMLSEQUENCE = 0;

/// Identificación fiscal.
Property TaxIdentification As Facturae.v32.TaxIdentificationType(XMLNAME = "TaxIdentification") [ Required ];

/// Persona jurídica y otras.
Property LegalEntity As Facturae.v32.LegalEntityType(XMLNAME = "LegalEntity");

/// Persona física.
Property Individual As Facturae.v32.IndividualType(XMLNAME = "Individual");

Storage Default
{
<Data name="AssigneeTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TaxIdentification</Value>
</Value>
<Value name="3">
<Value>LegalEntity</Value>
</Value>
<Value name="4">
<Value>Individual</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.AssigneeTypeD</DataLocation>
<DefaultData>AssigneeTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.AssigneeTypeD</IdLocation>
<IndexLocation>^Facturae.v32.AssigneeTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.AssigneeTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
