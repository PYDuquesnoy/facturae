/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.ReimbursableExpensesType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.DoubleTwoDecimalType, Facturae.v32.TextMax20Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "ReimbursableExpensesType";

Parameter XMLSEQUENCE = 1;

Property ReimbursableExpensesSellerParty As Facturae.v32.TaxIdentificationType(XMLNAME = "ReimbursableExpensesSellerParty");

Property ReimbursableExpensesBuyerParty As Facturae.v32.TaxIdentificationType(XMLNAME = "ReimbursableExpensesBuyerParty");

Property IssueDate As %Date(XMLNAME = "IssueDate");

Property InvoiceNumber As Facturae.v32.TextMax20Type(XMLNAME = "InvoiceNumber");

Property InvoiceSeriesCode As Facturae.v32.TextMax20Type(XMLNAME = "InvoiceSeriesCode");

Property ReimbursableExpensesAmount As Facturae.v32.DoubleTwoDecimalType(XMLNAME = "ReimbursableExpensesAmount") [ Required ];

Relationship InvoiceTotalsType4 As Facturae.v32.InvoiceTotalsType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = ReimbursableExpenses ];

Storage Default
{
<Data name="ReimbursableExpensesTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ReimbursableExpensesSellerParty</Value>
</Value>
<Value name="3">
<Value>ReimbursableExpensesBuyerParty</Value>
</Value>
<Value name="4">
<Value>IssueDate</Value>
</Value>
<Value name="5">
<Value>InvoiceNumber</Value>
</Value>
<Value name="6">
<Value>InvoiceSeriesCode</Value>
</Value>
<Value name="7">
<Value>ReimbursableExpensesAmount</Value>
</Value>
<Value name="8">
<Value>InvoiceTotalsType4</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.Reimbursabl7B8AD</DataLocation>
<DefaultData>ReimbursableExpensesTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.Reimbursabl7B8AD</IdLocation>
<IndexLocation>^Facturae.v32.Reimbursabl7B8AI</IndexLocation>
<StreamLocation>^Facturae.v32.Reimbursabl7B8AS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
