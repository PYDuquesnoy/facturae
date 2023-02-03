/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.DeliveryNoteType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.TextMax30Type, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "DeliveryNoteType";

Parameter XMLSEQUENCE = 1;

/// Número de referencia del albarán.
Property DeliveryNoteNumber As Facturae.v32.TextMax30Type(XMLNAME = "DeliveryNoteNumber") [ Required ];

/// Fecha del albarán.
Property DeliveryNoteDate As %Date(XMLNAME = "DeliveryNoteDate");

Relationship InvoiceLineType As Facturae.v32.InvoiceLineType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = DeliveryNotesReferences ];

Storage Default
{
<Data name="DeliveryNoteTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DeliveryNoteNumber</Value>
</Value>
<Value name="3">
<Value>DeliveryNoteDate</Value>
</Value>
<Value name="4">
<Value>InvoiceLineType</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.DeliveryNoteTypeD</DataLocation>
<DefaultData>DeliveryNoteTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.DeliveryNoteTypeD</IdLocation>
<IndexLocation>^Facturae.v32.DeliveryNoteTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.DeliveryNoteTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
