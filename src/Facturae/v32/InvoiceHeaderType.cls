/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.InvoiceHeaderType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.InvoiceClassType, Facturae.v32.InvoiceDocumentTypeType, Facturae.v32.TextMax20Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "InvoiceHeaderType";

Parameter XMLSEQUENCE = 1;

/// Número de factura. Número asignado por el Emisor.
Property InvoiceNumber As Facturae.v32.TextMax20Type(XMLNAME = "InvoiceNumber") [ Required ];

/// Número de serie asignado por el Emisor.
Property InvoiceSeriesCode As Facturae.v32.TextMax20Type(XMLNAME = "InvoiceSeriesCode");

/// Tipo documento factura. Puede ser una factura completa, abreviada, autofactura, anticipo, tique… En este estándar no se va a contemplar el tique.
Property InvoiceDocumentType As Facturae.v32.InvoiceDocumentTypeType(XMLNAME = "InvoiceDocumentType") [ Required ];

/// Clase de Factura. Este dato refleja la clase de factura, a saber: "OO" - Original, "OR" - rectificativa, "OC" - original recapitulativa, "CO" - copia de la original, "CR" - copia de la rectificativa, "CC" - copia recapitulativa. Una factura rectificativa sólo puede rectificar a una factura original, o bien realizar un abono por volumen correspondiente a un periodo diferido, o algún otro motivo autorizado por la Agencia Tributaria. Cuando la "clase" se corresponda con alguno de los valores "OR" ó "CR" (rectificativas), deberán estar cumplimentados los campos del grupo Corrective
Property InvoiceClass As Facturae.v32.InvoiceClassType(XMLNAME = "InvoiceClass") [ Required ];

/// Rectificativa.
Property Corrective As Facturae.v32.CorrectiveType(XMLNAME = "Corrective");

Storage Default
{
<Data name="InvoiceHeaderTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>InvoiceNumber</Value>
</Value>
<Value name="3">
<Value>InvoiceSeriesCode</Value>
</Value>
<Value name="4">
<Value>InvoiceDocumentType</Value>
</Value>
<Value name="5">
<Value>InvoiceClass</Value>
</Value>
<Value name="6">
<Value>Corrective</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.InvoiceHead11C6D</DataLocation>
<DefaultData>InvoiceHeaderTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.InvoiceHead11C6D</IdLocation>
<IndexLocation>^Facturae.v32.InvoiceHead11C6I</IndexLocation>
<StreamLocation>^Facturae.v32.InvoiceHead11C6S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
