/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.AttachmentType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.AttachmentCompressionAlgorithmType, Facturae.v32.AttachmentEncodingType, Facturae.v32.AttachmentFormatType, Facturae.v32.TextMax2500Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "AttachmentType";

Parameter XMLSEQUENCE = 1;

/// Algoritmo usado para comprimir el documento adjunto. Ampliar restricciones según convenga.
Property AttachmentCompressionAlgorithm As Facturae.v32.AttachmentCompressionAlgorithmType(XMLNAME = "AttachmentCompressionAlgorithm");

/// Formato del documento adjunto. Ampliar restricciones según convenga.
Property AttachmentFormat As Facturae.v32.AttachmentFormatType(XMLNAME = "AttachmentFormat") [ Required ];

/// Algoritmo usado para codificar el documento adjunto.
Property AttachmentEncoding As Facturae.v32.AttachmentEncodingType(XMLNAME = "AttachmentEncoding");

/// Descripción del documento.
Property AttachmentDescription As Facturae.v32.TextMax2500Type(XMLNAME = "AttachmentDescription");

/// Stream de datos del documento adjunto.
Property AttachmentData As %String(MAXLEN = "", XMLNAME = "AttachmentData") [ Required ];

Relationship AdditionalDataType As Facturae.v32.AdditionalDataType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = RelatedDocuments ];

Storage Default
{
<Data name="AttachmentTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AttachmentCompressionAlgorithm</Value>
</Value>
<Value name="3">
<Value>AttachmentFormat</Value>
</Value>
<Value name="4">
<Value>AttachmentEncoding</Value>
</Value>
<Value name="5">
<Value>AttachmentDescription</Value>
</Value>
<Value name="6">
<Value>AttachmentData</Value>
</Value>
<Value name="7">
<Value>AdditionalDataType</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.AttachmentTypeD</DataLocation>
<DefaultData>AttachmentTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.AttachmentTypeD</IdLocation>
<IndexLocation>^Facturae.v32.AttachmentTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.AttachmentTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
