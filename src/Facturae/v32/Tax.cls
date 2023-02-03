/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.Tax Extends Facturae.v32.TaxOutputType [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLINCLUDEINGROUP = 0;

Parameter XMLNAME = "Tax";

Parameter XMLSEQUENCE = 1;

Relationship InvoiceLineType4 As Facturae.v32.InvoiceLineType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = TaxesOutputs ];

Storage Default
{
<Data name="TaxDefaultData">
<Subscript>"Tax"</Subscript>
<Value name="1">
<Value>InvoiceLineType4</Value>
</Value>
</Data>
<DefaultData>TaxDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
