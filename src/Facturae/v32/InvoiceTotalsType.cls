/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.InvoiceTotalsType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.DoubleTwoDecimalType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "InvoiceTotalsType";

Parameter XMLSEQUENCE = 1;

/// Total Importe Bruto. Suma total de importes brutos de los detalles de la factura. Siempre con dos decimales.
Property TotalGrossAmount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalGrossAmount") [ Required ];

/// Descuentos sobre el Total Importe Bruto. Habrá tantos bloques de campos GeneralDiscounts como clases de descuentos diferentes se apliquen, a nivel de factura. Cuando existan diversas bases imponibles, se aplicarán proporcionalmente, efectúandose el redondeo final al céntimo sobre el tipo impositivo de mayor valor.
/// Descuento.
Relationship GeneralDiscounts As Facturae.v32.DiscountType(XMLITEMNAME = "Discount", XMLNAME = "GeneralDiscounts", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceTotalsType ];

/// Cargos sobre el Total Importe Bruto. Habrá tantos bloques de campos GeneralSurcharges como clases de cargos/recargos se apliquen, a nivel de factura. Cuando existan diversas bases imponibles, se aplicarán proporcionalmente, efectuándose el redondeo final al céntimo sobre el tipo impositivo de mayor valor.
/// Cargo.
Relationship GeneralSurcharges As Facturae.v32.ChargeType(XMLITEMNAME = "Charge", XMLNAME = "GeneralSurcharges", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceTotalsType1 ];

/// Total general de descuentos. Sumatorio de los diferentes campos GeneralDiscounts Siempre con dos decimales.
Property TotalGeneralDiscounts As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalGeneralDiscounts");

/// Total general de cargos. Sumatorio de los diferentes campos GeneralSurcharges Siempre con dos decimales.
Property TotalGeneralSurcharges As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalGeneralSurcharges");

/// Total importe bruto antes de impuestos. Resultado de: TotalGrossAmount - TotalGeneralDiscounts + TotalGeneralSurcharges Siempre con dos decimales.
Property TotalGrossAmountBeforeTaxes As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalGrossAmountBeforeTaxes") [ Required ];

/// Total impuestos repercutidos. Sumatorio de las diferentes Cuotas + Total Recargos de Equivalencia. Siempre con dos decimales.
Property TotalTaxOutputs As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalTaxOutputs") [ Required ];

/// Total impuestos retenidos. Sumatorio de los diferentes TaxAmount. Siempre con dos decimales.
Property TotalTaxesWithheld As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalTaxesWithheld") [ Required ];

/// Total factura. Resultado de: TotalGrossAmountBeforeTaxes + TotalTaxOutputs - TotalTaxesWithheld. Siempre con dos decimales.
Property InvoiceTotal As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "InvoiceTotal") [ Required ];

/// Subvenciones por adquisición de determinados bienes. Administraciones Públicas.
/// Subvención.
Relationship Subsidies As Facturae.v32.SubsidyType(XMLITEMNAME = "Subsidy", XMLNAME = "Subsidies", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceTotalsType2 ];

/// Anticipos. Pagos anticipados sobre el Total Facturas. Habrá tantos bloques PaymentsOnAccount como clases de anticipos se apliquen a nivel factura.
/// Anticipo.
Relationship PaymentsOnAccount As Facturae.v32.PaymentOnAccountType(XMLITEMNAME = "PaymentOnAccount", XMLNAME = "PaymentsOnAccount", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceTotalsType3 ];

/// Suplidos incorporados en la factura.
/// Suplidos.
Relationship ReimbursableExpenses As Facturae.v32.ReimbursableExpensesType(XMLITEMNAME = "ReimbursableExpenses", XMLNAME = "ReimbursableExpenses", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = InvoiceTotalsType4 ];

/// Total de gastos financieros. Siempre con dos decimales.
Property TotalFinancialExpenses As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalFinancialExpenses");

/// Total a pagar. Resultado: InvoiceTotal - (SubsidyAmount + TotalPaymentsOnAccount). Siempre con dos decimales.
Property TotalOutstandingAmount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalOutstandingAmount") [ Required ];

/// Total de anticipos. Sumatorio de los campos PaymentOnAccountAmount. Siempre con dos decimales.
Property TotalPaymentsOnAccount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalPaymentsOnAccount");

/// Retenciones. Cantidades que retiene el pagador hasta el buen fin de la operación.
Property AmountsWithheld As Facturae.v32.AmountsWithheldType(XMLNAME = "AmountsWithheld");

/// Total a ejecutar. Resultado de: Total a pagar - Importe a retener sobre el total a pagar + Suplidos + Gastos financieros. Siempre con dos decimales.
Property TotalExecutableAmount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalExecutableAmount") [ Required ];

/// Total de suplidos. Siempre con dos decimales.
Property TotalReimbursableExpenses As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "TotalReimbursableExpenses");

Storage Default
{
<Data name="InvoiceTotalsTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TotalGrossAmount</Value>
</Value>
<Value name="3">
<Value>TotalGeneralDiscounts</Value>
</Value>
<Value name="4">
<Value>TotalGeneralSurcharges</Value>
</Value>
<Value name="5">
<Value>TotalGrossAmountBeforeTaxes</Value>
</Value>
<Value name="6">
<Value>TotalTaxOutputs</Value>
</Value>
<Value name="7">
<Value>TotalTaxesWithheld</Value>
</Value>
<Value name="8">
<Value>InvoiceTotal</Value>
</Value>
<Value name="9">
<Value>TotalFinancialExpenses</Value>
</Value>
<Value name="10">
<Value>TotalOutstandingAmount</Value>
</Value>
<Value name="11">
<Value>TotalPaymentsOnAccount</Value>
</Value>
<Value name="12">
<Value>AmountsWithheld</Value>
</Value>
<Value name="13">
<Value>TotalExecutableAmount</Value>
</Value>
<Value name="14">
<Value>TotalReimbursableExpenses</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.InvoiceTota71D0D</DataLocation>
<DefaultData>InvoiceTotalsTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.InvoiceTota71D0D</IdLocation>
<IndexLocation>^Facturae.v32.InvoiceTota71D0I</IndexLocation>
<StreamLocation>^Facturae.v32.InvoiceTota71D0S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
