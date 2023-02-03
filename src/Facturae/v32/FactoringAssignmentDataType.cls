/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.FactoringAssignmentDataType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Facturae.v32.TextMax2500Type, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "FactoringAssignmentDataType";

Parameter XMLSEQUENCE = 1;

/// Cesionario.
Property Assignee As Facturae.v32.AssigneeType(XMLNAME = "Assignee") [ Required ];

/// Datos de pago.
/// Vencimiento.
Relationship PaymentDetails As Facturae.v32.InstallmentType(XMLITEMNAME = "Installment", XMLNAME = "PaymentDetails", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = FactoringAssignmentDataType ];

/// Texto de la cláusula de cesión.
Property FactoringAssignmentClauses As Facturae.v32.TextMax2500Type(XMLNAME = "FactoringAssignmentClauses") [ Required ];

Storage Default
{
<Data name="FactoringAssignmentDataTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Assignee</Value>
</Value>
<Value name="3">
<Value>FactoringAssignmentClauses</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.FactoringAs3ED2D</DataLocation>
<DefaultData>FactoringAssignmentDataTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.FactoringAs3ED2D</IdLocation>
<IndexLocation>^Facturae.v32.FactoringAs3ED2I</IndexLocation>
<StreamLocation>^Facturae.v32.FactoringAs3ED2S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
