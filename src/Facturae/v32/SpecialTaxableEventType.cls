/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.SpecialTaxableEventType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.SpecialTaxableEventCodeType, Facturae.v32.TextMax2500Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "SpecialTaxableEventType";

Parameter XMLSEQUENCE = 1;

/// Código de fiscalidad especial. Cuando un hecho imponible (taxable event) presenta una fiscalidad especial. No se informará este elemento cuando no exista fiscalidad especial.
Property SpecialTaxableEventCode As Facturae.v32.SpecialTaxableEventCodeType(XMLNAME = "SpecialTaxableEventCode") [ Required ];

/// Justificación de la fiscalidad especial que se aplica en esta operación.
Property SpecialTaxableEventReason As Facturae.v32.TextMax2500Type(XMLNAME = "SpecialTaxableEventReason") [ Required ];

Storage Default
{
<Data name="SpecialTaxableEventTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SpecialTaxableEventCode</Value>
</Value>
<Value name="3">
<Value>SpecialTaxableEventReason</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.SpecialTaxaD127D</DataLocation>
<DefaultData>SpecialTaxableEventTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.SpecialTaxaD127D</IdLocation>
<IndexLocation>^Facturae.v32.SpecialTaxaD127I</IndexLocation>
<StreamLocation>^Facturae.v32.SpecialTaxaD127S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
