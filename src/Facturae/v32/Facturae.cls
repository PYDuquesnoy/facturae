/// Elemento ORIGEN de Fichero de Facturas Facturae.
Class Facturae.v32.Facturae Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "Facturae";

Parameter XMLSEQUENCE = 1;

Parameter XMLPREFIX As STRING = "fe";

/// Cabecera del fichero xml
Property FileHeader As Facturae.v32.FileHeaderType(XMLNAME = "FileHeader") [ Required ];

/// Sujetos - Datos del emisor y receptor de la factura
Property Parties As Facturae.v32.PartiesType(XMLNAME = "Parties") [ Required ];

/// Conjunto de facturas que contiene el fichero. Conjunto de facturas que contiene el fichero. Para todos los elementos numéricos, los cálculos se efectuarán siempre redondeando al número de decimales correspondientes.
/// Factura.
Relationship Invoices As Facturae.v32.InvoiceType(XMLITEMNAME = "Invoice", XMLNAME = "Invoices", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = Facturae ];

/// Extensiones. Podrán incorporarse nuevas definiciones estructuradas cuando sean de interés conjunto para emisores y receptores, y no estén ya definidas en el esquema de la factura.
Property Extensions As Facturae.v32.ExtensionsType(XMLNAME = "Extensions");

// Property Signature As Facturae.xmldsig.SignatureType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Signature", XMLREF = 1);

Property Signature As Facturae.xmldsig.SignatureType(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.w3.org/2000/09/xmldsig#", XMLNAME = "Signature", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE");

Storage Default
{
<Data name="FacturaeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>FileHeader</Value>
</Value>
<Value name="3">
<Value>Parties</Value>
</Value>
<Value name="4">
<Value>Extensions</Value>
</Value>
<Value name="5">
<Value>Signature</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.FacturaeD</DataLocation>
<DefaultData>FacturaeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.FacturaeD</IdLocation>
<IndexLocation>^Facturae.v32.FacturaeI</IndexLocation>
<StreamLocation>^Facturae.v32.FacturaeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
