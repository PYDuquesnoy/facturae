/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.InstallmentType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.DoubleTwoDecimalType, Facturae.v32.PaymentMeansType, Facturae.v32.RegulatoryReportingDataType, Facturae.v32.TextMax2500Type, Facturae.v32.TextMax60Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "InstallmentType";

Parameter XMLSEQUENCE = 1;

/// Fechas en las que se deben atender los pagos. ISO 8601:2004.
Property InstallmentDueDate As %Date(XMLNAME = "InstallmentDueDate") [ Required ];

/// Importe a satisfacer en cada plazo. Siempre con dos decimales.
Property InstallmentAmount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "InstallmentAmount") [ Required ];

/// Cada vencimiento/importe podrá tener un medio de pago concreto.
Property PaymentMeans As Facturae.v32.PaymentMeansType(XMLNAME = "PaymentMeans") [ Required ];

/// Cuenta de abono. Único formato admitido. Cuando la forma de pago (PaymentMeans) sea "transferencia" este dato será obligatorio.
Property AccountToBeCredited As Facturae.v32.AccountType(XMLNAME = "AccountToBeCredited");

/// Referencia expresa del pago. Dato que precisa el Emisor para conciliar los pagos con cada factura.
Property PaymentReconciliationReference As Facturae.v32.TextMax60Type(XMLNAME = "PaymentReconciliationReference");

/// Cuenta de cargo. Único formato admitido. Cuando la forma de pago (PaymentMeans) sea "recibo domiciliado" este dato será obligatorio.
Property AccountToBeDebited As Facturae.v32.AccountType(XMLNAME = "AccountToBeDebited");

/// Observaciones de cobro. Libre para uso del Emisor.
Property CollectionAdditionalInformation As Facturae.v32.TextMax2500Type(XMLNAME = "CollectionAdditionalInformation");

/// Código Estadístico. Usado en las operaciones transfronterizas según las especificaciones de la circular del Banco España 15/1992
Property RegulatoryReportingData As Facturae.v32.RegulatoryReportingDataType(XMLNAME = "RegulatoryReportingData");

/// Referencia del cliente pagador, similar a la utilizada por elemisor para la conciliación de los pagos.
Property DebitReconciliationReference As Facturae.v32.TextMax60Type(XMLNAME = "DebitReconciliationReference");

Relationship FactoringAssignmentDataType As Facturae.v32.FactoringAssignmentDataType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = PaymentDetails ];

Relationship InvoiceType3 As Facturae.v32.InvoiceType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = PaymentDetails ];

Storage Default
{
<Data name="InstallmentTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>InstallmentDueDate</Value>
</Value>
<Value name="3">
<Value>InstallmentAmount</Value>
</Value>
<Value name="4">
<Value>PaymentMeans</Value>
</Value>
<Value name="5">
<Value>AccountToBeCredited</Value>
</Value>
<Value name="6">
<Value>PaymentReconciliationReference</Value>
</Value>
<Value name="7">
<Value>AccountToBeDebited</Value>
</Value>
<Value name="8">
<Value>CollectionAdditionalInformation</Value>
</Value>
<Value name="9">
<Value>RegulatoryReportingData</Value>
</Value>
<Value name="10">
<Value>DebitReconciliationReference</Value>
</Value>
<Value name="11">
<Value>FactoringAssignmentDataType</Value>
</Value>
<Value name="12">
<Value>InvoiceType3</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.InstallmentTypeD</DataLocation>
<DefaultData>InstallmentTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.InstallmentTypeD</IdLocation>
<IndexLocation>^Facturae.v32.InstallmentTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.InstallmentTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
