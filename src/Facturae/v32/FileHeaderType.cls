/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.FileHeaderType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.InvoiceIssuerTypeType, Facturae.v32.ModalityType, Facturae.v32.SchemaVersionType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "FileHeaderType";

Parameter XMLSEQUENCE = 1;

/// Código que indica versión utilizada. Existirá compatibilidad de versiones.
Property SchemaVersion As Facturae.v32.SchemaVersionType(XMLNAME = "SchemaVersion") [ Required ];

/// Modalidad. Individual o Lote. Si es "individual" (I) los importes de los campos del grupo Batch coincidirán con sus correspondientes campos del grupo InvoiceTotals y el campo InvoicesCount tendrá siempre el valor "1". Si es "lote" (L), el valor del campo InvoicesCount será siempre > "1".
Property Modality As Facturae.v32.ModalityType(XMLNAME = "Modality") [ Required ];

/// Tipo Emisor Factura. Actor que firma la factura. Si toma el valor "TE" el grupo ThirdParty será obligatorio cumplimentarlo en todos sus apartados.
Property InvoiceIssuerType As Facturae.v32.InvoiceIssuerTypeType(XMLNAME = "InvoiceIssuerType") [ Required ];

/// Tercero. La factura puede ser generada y firmada por un Tercero.
Property ThirdParty As Facturae.v32.ThirdPartyType(XMLNAME = "ThirdParty");

/// Lote.
Property Batch As Facturae.v32.BatchType(XMLNAME = "Batch") [ Required ];

/// Datos cesión factoring.
Property FactoringAssignmentData As Facturae.v32.FactoringAssignmentDataType(XMLNAME = "FactoringAssignmentData");

Storage Default
{
<Data name="FileHeaderTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SchemaVersion</Value>
</Value>
<Value name="3">
<Value>Modality</Value>
</Value>
<Value name="4">
<Value>InvoiceIssuerType</Value>
</Value>
<Value name="5">
<Value>ThirdParty</Value>
</Value>
<Value name="6">
<Value>Batch</Value>
</Value>
<Value name="7">
<Value>FactoringAssignmentData</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.FileHeaderTypeD</DataLocation>
<DefaultData>FileHeaderTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.FileHeaderTypeD</IdLocation>
<IndexLocation>^Facturae.v32.FileHeaderTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.FileHeaderTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
