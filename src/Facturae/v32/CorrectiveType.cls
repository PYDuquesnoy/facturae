/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.CorrectiveType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.CorrectionMethodDescriptionType, Facturae.v32.CorrectionMethodType, Facturae.v32.ReasonCodeType, Facturae.v32.ReasonDescriptionType, Facturae.v32.TextMax20Type, Facturae.v32.TextMax2500Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "CorrectiveType";

Parameter XMLSEQUENCE = 1;

/// Número de la factura que se rectifica. Será obligatorio cuando el dato "CorrectionMethod" (Código del criterio de la rectificación) sea "01" o "02".
Property InvoiceNumber As Facturae.v32.TextMax20Type(XMLNAME = "InvoiceNumber");

/// Número de serie de la factura que se rectifica.
Property InvoiceSeriesCode As Facturae.v32.TextMax20Type(XMLNAME = "InvoiceSeriesCode");

/// Código del motivo. Código numérico del motivo de rectificación. "01" a "16" errores según reglamento RD 1496/2003; "80" a "85" errores según Artº 80 Ley 37/92 el IVA.
Property ReasonCode As Facturae.v32.ReasonCodeType(XMLNAME = "ReasonCode") [ Required ];

/// Descripción motivo. Descripción del motivo de rectificación y que se corresponde con cada código. Ver tabla de códigos y descripciones.
Property ReasonDescription As Facturae.v32.ReasonDescriptionType(XMLNAME = "ReasonDescription") [ Required ];

/// Período natural en el que se produjeron los efectos fiscales de la factura a rectificar; y, por lo tanto, se tributó, y que ahora, es objeto de rectificación. ISO 8601:2004.
Property TaxPeriod As Facturae.v32.PeriodDates(XMLNAME = "TaxPeriod") [ Required ];

/// Código numérico que identifica el criterio empleado en cada caso para una rectificación. "01" - se reflejan todos los detalles a rectificar de la factura original. "02" - sólo se anotan los detalles ya rectificados.  "03" - Rectificación por descuento por volumen de operaciones durante un periodo. - "04" - Autorizadas por la Agencia Tributaria".
Property CorrectionMethod As Facturae.v32.CorrectionMethodType(XMLNAME = "CorrectionMethod") [ Required ];

/// Descripción del criterio asociada al código indicado en el campo anterior. "01" - Rectificación modelo íntegro. "02" - Rectificación modelo por diferencias. "03" - Rectificación por descuento por volumen de operaciones durante un periodo. - "04" - Autorizadas por la Agencia Tributaria".
Property CorrectionMethodDescription As Facturae.v32.CorrectionMethodDescriptionType(XMLNAME = "CorrectionMethodDescription") [ Required ];

/// Ampliación motivo de la rectificación. Descripción de las aclaraciones y motivos de la factura rectificativa.
Property AdditionalReasonDescription As Facturae.v32.TextMax2500Type(XMLNAME = "AdditionalReasonDescription");

Storage Default
{
<Data name="CorrectiveTypeDefaultData">
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
<Value>ReasonCode</Value>
</Value>
<Value name="5">
<Value>ReasonDescription</Value>
</Value>
<Value name="6">
<Value>TaxPeriod</Value>
</Value>
<Value name="7">
<Value>CorrectionMethod</Value>
</Value>
<Value name="8">
<Value>CorrectionMethodDescription</Value>
</Value>
<Value name="9">
<Value>AdditionalReasonDescription</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.CorrectiveTypeD</DataLocation>
<DefaultData>CorrectiveTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.CorrectiveTypeD</IdLocation>
<IndexLocation>^Facturae.v32.CorrectiveTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.CorrectiveTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
