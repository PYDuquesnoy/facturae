/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.AdditionalDataType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.TextMax2500Type, Facturae.v32.TextMax40Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "AdditionalDataType";

Parameter XMLSEQUENCE = 1;

/// Factura asociada. Número y Serie de acuerdo Emisor/Receptor.
Property RelatedInvoice As Facturae.v32.TextMax40Type(XMLNAME = "RelatedInvoice");

/// Documentos asociados. Identificación de documentos Emisor/Receptor.
/// Documento adjunto. En [BASE-64]. Contiene los documentos relacionados con la factura en el formato deseado (imagen, PDF, XML, etc.)
Relationship RelatedDocuments As Facturae.v32.AttachmentType(XMLITEMNAME = "Attachment", XMLNAME = "RelatedDocuments", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = AdditionalDataType ];

/// Información adicional. Lo que considere oportuno el Emisor. En este elemento se recogerá el motivo por lo que el impuesto correspondiente está "no sujeto" o "exento", cuando se produzca esta situación.
Property InvoiceAdditionalInformation As Facturae.v32.TextMax2500Type(XMLNAME = "InvoiceAdditionalInformation");

/// Extensiones. Podrán incorporarse nuevas definiciones estructuradas cuando sean de interés conjunto para emisores y receptores, y no estén ya definidas en el esquema de la factura.
Property Extensions As Facturae.v32.ExtensionsType(XMLNAME = "Extensions");

Storage Default
{
<Data name="AdditionalDataTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>RelatedInvoice</Value>
</Value>
<Value name="3">
<Value>InvoiceAdditionalInformation</Value>
</Value>
<Value name="4">
<Value>Extensions</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.AdditionalD5052D</DataLocation>
<DefaultData>AdditionalDataTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.AdditionalD5052D</IdLocation>
<IndexLocation>^Facturae.v32.AdditionalD5052I</IndexLocation>
<StreamLocation>^Facturae.v32.AdditionalD5052S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
