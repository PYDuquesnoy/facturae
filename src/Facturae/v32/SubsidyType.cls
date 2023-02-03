/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.SubsidyType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.DoubleFourDecimalType, Facturae.v32.DoubleTwoDecimalType, Facturae.v32.TextMax2500Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "SubsidyType";

Parameter XMLSEQUENCE = 1;

/// Detalle de la Subvención aplicada.
Property SubsidyDescription As Facturae.v32.TextMax2500Type(XMLNAME = "SubsidyDescription") [ Required ];

/// Porcentaje de la Subvención. Porcentaje a aplicar al Total Factura. Los porcentajes se reflejan con 4 decimales.
Property SubsidyRate As Facturae.v32.DoubleFourDecimalType(XMLNAME = "SubsidyRate");

/// Importe de la Subvención. Importe a aplicar al Total Factura. Siempre con dos decimales.
Property SubsidyAmount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "SubsidyAmount") [ Required ];

Relationship InvoiceTotalsType2 As Facturae.v32.InvoiceTotalsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Subsidies ];

Storage Default
{
<Data name="SubsidyTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SubsidyDescription</Value>
</Value>
<Value name="3">
<Value>SubsidyRate</Value>
</Value>
<Value name="4">
<Value>SubsidyAmount</Value>
</Value>
<Value name="5">
<Value>InvoiceTotalsType2</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.SubsidyTypeD</DataLocation>
<DefaultData>SubsidyTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.SubsidyTypeD</IdLocation>
<IndexLocation>^Facturae.v32.SubsidyTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.SubsidyTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
