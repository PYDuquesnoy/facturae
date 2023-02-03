/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.PaymentOnAccountType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.DoubleTwoDecimalType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "PaymentOnAccountType";

Parameter XMLSEQUENCE = 1;

/// Fecha/s del/os anticipo/s. ISO 8601:2004.
Property PaymentOnAccountDate As %Date(XMLNAME = "PaymentOnAccountDate") [ Required ];

/// Importe de cada anticipo. Siempre con dos decimales.
Property PaymentOnAccountAmount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "PaymentOnAccountAmount") [ Required ];

Relationship InvoiceTotalsType3 As Facturae.v32.InvoiceTotalsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = PaymentsOnAccount ];

Storage Default
{
<Data name="PaymentOnAccountTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PaymentOnAccountDate</Value>
</Value>
<Value name="3">
<Value>PaymentOnAccountAmount</Value>
</Value>
<Value name="4">
<Value>InvoiceTotalsType3</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.PaymentOnAc8D08D</DataLocation>
<DefaultData>PaymentOnAccountTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.PaymentOnAc8D08D</IdLocation>
<IndexLocation>^Facturae.v32.PaymentOnAc8D08I</IndexLocation>
<StreamLocation>^Facturae.v32.PaymentOnAc8D08S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
