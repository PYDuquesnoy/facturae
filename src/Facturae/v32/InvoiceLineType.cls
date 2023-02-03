/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.InvoiceLineType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.DoubleSixDecimalType, Facturae.v32.TextMax20Type, Facturae.v32.TextMax2500Type, Facturae.v32.UnitOfMeasureType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "InvoiceLineType";

Parameter XMLSEQUENCE = 1;

/// Referencia del contrato del Emisor.
Property IssuerContractReference As Facturae.v32.TextMax20Type(XMLNAME = "IssuerContractReference");

/// Fecha del contrato del emisor.
Property IssuerContractDate As %Date(XMLNAME = "IssuerContractDate");

/// Referencia de la Operación, Número de Pedido, Contrato, etc. del Emisor.
Property IssuerTransactionReference As Facturae.v32.TextMax20Type(XMLNAME = "IssuerTransactionReference");

/// Fecha de operación / pedido del emisor.
Property IssuerTransactionDate As %Date(XMLNAME = "IssuerTransactionDate");

/// Referencia del contrato del Receptor.
Property ReceiverContractReference As Facturae.v32.TextMax20Type(XMLNAME = "ReceiverContractReference");

/// Fecha del contrato del receptor.
Property ReceiverContractDate As %Date(XMLNAME = "ReceiverContractDate");

/// Referencia de la Operación, Número de Pedido, Contrato, etc. del Receptor.
Property ReceiverTransactionReference As Facturae.v32.TextMax20Type(XMLNAME = "ReceiverTransactionReference");

/// Fecha de operación / pedido del receptor.
Property ReceiverTransactionDate As %Date(XMLNAME = "ReceiverTransactionDate");

/// Referencia del expediente.
Property FileReference As Facturae.v32.TextMax20Type(XMLNAME = "FileReference");

/// Fecha del expediente.
Property FileDate As %Date(XMLNAME = "FileDate");

/// Número de secuencia o línea del pedido.
Property SequenceNumber As %String(XMLNAME = "SequenceNumber");

/// Referencias de albaranes.
/// Información del albarán.
Relationship DeliveryNotesReferences As Facturae.v32.DeliveryNoteType(XMLITEMNAME = "DeliveryNote", XMLNAME = "DeliveryNotesReferences", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceLineType ];

/// Descripción del bien o servicio.
Property ItemDescription As Facturae.v32.TextMax2500Type(XMLNAME = "ItemDescription") [ Required ];

/// Cantidad. Número de Unidades servidas/prestadas.
Property Quantity As %String(XMLNAME = "Quantity") [ Required ];

/// Unidad en que está referida la Cantidad. Recomendación 20, Revisión 4 y Recomendación 21, Revisión 5 de UN/CEFACT.
Property UnitOfMeasure As Facturae.v32.UnitOfMeasureType(XMLNAME = "UnitOfMeasure");

/// Precio de la unidad de bien o servicio servido/prestado, en la moneda indicada en la Cabecera de la Factura. Siempre sin Impuestos. Siempre con seis decimales.
Property UnitPriceWithoutTax As Facturae.v32.DoubleSixDecimalType(XMLNAME = "UnitPriceWithoutTax") [ Required ];

/// Coste Total. Resultado: Quantity x UnitPriceWithoutTax Siempre con seis decimales.
Property TotalCost As Facturae.v32.DoubleSixDecimalType(XMLNAME = "TotalCost") [ Required ];

/// Descuentos.
/// Descuento.
Relationship DiscountsAndRebates As Facturae.v32.DiscountType(XMLITEMNAME = "Discount", XMLNAME = "DiscountsAndRebates", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceLineType1 ];

/// Cargos.
/// Cargo.
Relationship Charges As Facturae.v32.ChargeType(XMLITEMNAME = "Charge", XMLNAME = "Charges", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceLineType2 ];

/// Importe bruto. Resultado: TotalCost - DiscountAmount + ChargeAmount Siempre con seis decimales.
Property GrossAmount As Facturae.v32.DoubleSixDecimalType(XMLNAME = "GrossAmount") [ Required ];

/// Impuestos retenidos. El elemento "importe total" de este bloque - nivel de detalle - se considerará sólo a efectos informativos.
/// Impuesto.
Relationship TaxesWithheld As Facturae.v32.TaxType(XMLITEMNAME = "Tax", XMLNAME = "TaxesWithheld", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceLineType3 ];

/// Impuestos repercutidos. El elemento "importe total" de este bloque - nivel de detalle - se considerará sólo a efectos informativos.
/// Detalle impuestos repercutidos.
Relationship TaxesOutputs As Facturae.v32.Tax(XMLITEMNAME = "Tax", XMLNAME = "TaxesOutputs", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceLineType4 ];

/// Información sobre el periodo de prestación de un servicio. ISO 8601 :2004.
Property LineItemPeriod As Facturae.v32.PeriodDates(XMLNAME = "LineItemPeriod");

/// Fecha concreta de prestación o entrega del bien o servicio. ISO 8601:2004.
Property TransactionDate As %Date(XMLNAME = "TransactionDate");

/// Información adicional. Libre para el emisor por cada detalle.
Property AdditionalLineItemInformation As Facturae.v32.TextMax2500Type(XMLNAME = "AdditionalLineItemInformation");

/// Este campo indica la obligatoriedad de los impuestos.
Property SpecialTaxableEvent As Facturae.v32.SpecialTaxableEventType(XMLNAME = "SpecialTaxableEvent");

/// Código de artículo.
Property ArticleCode As Facturae.v32.TextMax20Type(XMLNAME = "ArticleCode");

/// Extensiones. Podrán incorporarse nuevas definiciones estructuradas cuando sean de interés conjunto para emisores y receptores, y no estén ya definidas en el esquema de la factura.
Property Extensions As Facturae.v32.ExtensionsType(XMLNAME = "Extensions");

Relationship InvoiceType2 As Facturae.v32.InvoiceType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = Items ];

Storage Default
{
<Data name="InvoiceLineTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>IssuerContractReference</Value>
</Value>
<Value name="3">
<Value>IssuerContractDate</Value>
</Value>
<Value name="4">
<Value>IssuerTransactionReference</Value>
</Value>
<Value name="5">
<Value>IssuerTransactionDate</Value>
</Value>
<Value name="6">
<Value>ReceiverContractReference</Value>
</Value>
<Value name="7">
<Value>ReceiverContractDate</Value>
</Value>
<Value name="8">
<Value>ReceiverTransactionReference</Value>
</Value>
<Value name="9">
<Value>ReceiverTransactionDate</Value>
</Value>
<Value name="10">
<Value>FileReference</Value>
</Value>
<Value name="11">
<Value>FileDate</Value>
</Value>
<Value name="12">
<Value>SequenceNumber</Value>
</Value>
<Value name="13">
<Value>ItemDescription</Value>
</Value>
<Value name="14">
<Value>Quantity</Value>
</Value>
<Value name="15">
<Value>UnitOfMeasure</Value>
</Value>
<Value name="16">
<Value>UnitPriceWithoutTax</Value>
</Value>
<Value name="17">
<Value>TotalCost</Value>
</Value>
<Value name="18">
<Value>GrossAmount</Value>
</Value>
<Value name="19">
<Value>LineItemPeriod</Value>
</Value>
<Value name="20">
<Value>TransactionDate</Value>
</Value>
<Value name="21">
<Value>AdditionalLineItemInformation</Value>
</Value>
<Value name="22">
<Value>SpecialTaxableEvent</Value>
</Value>
<Value name="23">
<Value>ArticleCode</Value>
</Value>
<Value name="24">
<Value>Extensions</Value>
</Value>
<Value name="25">
<Value>InvoiceType2</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.InvoiceLineTypeD</DataLocation>
<DefaultData>InvoiceLineTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.InvoiceLineTypeD</IdLocation>
<IndexLocation>^Facturae.v32.InvoiceLineTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.InvoiceLineTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
