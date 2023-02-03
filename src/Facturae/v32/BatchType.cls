/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.BatchType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.CurrencyCodeType, Facturae.v32.TextMax70Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "BatchType";

Parameter XMLSEQUENCE = 1;

/// Identificador del lote. Concatenación del nº de documento del emisor con el número de la primera factura y el número de serie caso de existir.
Property BatchIdentifier As Facturae.v32.TextMax70Type(XMLNAME = "BatchIdentifier") [ Required ];

/// Número total de facturas. Refleja, cuando es lote, el número de facturas del mismo. Siempre será valor "1" cuando el campo Modality (Modalidad) tenga el valor "I".
Property InvoicesCount As %Integer(XMLNAME = "InvoicesCount") [ Required ];

/// Total facturas. Suma de los importes InvoiceTotal del Fichero. Este importe lo es a efectos de total de factura y fiscales, sin tener en cuenta subvenciones, anticipos y/o retenciones que pudieran haberse practicado.
Property TotalInvoicesAmount As Facturae.v32.AmountType(XMLNAME = "TotalInvoicesAmount") [ Required ];

/// Total a pagar. Suma de los importes TotalOutstandingAmount del Fichero, con dos decimales. Es el importe que efectivamente se adeuda, una vez descontados los anticipos y sin tener en cuenta las retenciones.
Property TotalOutstandingAmount As Facturae.v32.AmountType(XMLNAME = "TotalOutstandingAmount") [ Required ];

/// Total a Ejecutar. Sumatorio de las diferencias de los importes (TotalOutstandingAmount y WithholdingAmount) del fichero = Sumatorio de los Importes TotalExecutableAmount, con dos decimales. Es el importe que se adeuda minorado en un posible importe retenido en garantía de cumplimientos contractuales.
Property TotalExecutableAmount As Facturae.v32.AmountType(XMLNAME = "TotalExecutableAmount") [ Required ];

/// Código ISO 4217:2001 Alpha-3 de la moneda en la que se emite la factura. Si difiere de la moneda EURO o del campo ExchangeRateDetails será obligatorio indicar el contravalor y el tipo/fecha de cambio para los campos de base imponible y cuota, retenida como repercutida, así como en los totales TotalInvoicesAmount, TotalOutstandingAmount, y TotalExecutableAmount.
Property InvoiceCurrencyCode As Facturae.v32.CurrencyCodeType(XMLNAME = "InvoiceCurrencyCode") [ Required ];

Storage Default
{
<Data name="BatchTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BatchIdentifier</Value>
</Value>
<Value name="3">
<Value>InvoicesCount</Value>
</Value>
<Value name="4">
<Value>TotalInvoicesAmount</Value>
</Value>
<Value name="5">
<Value>TotalOutstandingAmount</Value>
</Value>
<Value name="6">
<Value>TotalExecutableAmount</Value>
</Value>
<Value name="7">
<Value>InvoiceCurrencyCode</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.BatchTypeD</DataLocation>
<DefaultData>BatchTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.BatchTypeD</IdLocation>
<IndexLocation>^Facturae.v32.BatchTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.BatchTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
