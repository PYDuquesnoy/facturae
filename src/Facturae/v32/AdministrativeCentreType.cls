/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.AdministrativeCentreType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.RoleTypeCodeType, Facturae.v32.TextMax10Type, Facturae.v32.TextMax14Type, Facturae.v32.TextMax2500Type, Facturae.v32.TextMax40Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "AdministrativeCentreType";

Parameter XMLSEQUENCE = 0;

/// Número del Departamento Emisor.
Property CentreCode As Facturae.v32.TextMax10Type(XMLNAME = "CentreCode");

/// Tipo rol. Indica la función de un Punto Operacional (P.O.) definido como Centro/Departamento. Estas funciones son: "Receptor" - Centro del NIF receptor destinatario de la factura. "Pagador" - Centro del NIF receptor responsable de pagar la factura. "Comprador" - Centro del NIF receptor que emitió el pedido. "Cobrador" - Centro del NIF emisor responsable de gestionar el cobro. "Fiscal" - Centro del NIF receptor de las facturas, cuando un P.O. buzón es compartido por varias empresas clientes con diferentes NIF.s y es necesario diferenciar el receptor del mensaje (buzón común) del lugar donde debe depositarse (empresa destinataria).
Property RoleTypeCode As Facturae.v32.RoleTypeCodeType(XMLNAME = "RoleTypeCode");

/// Nombre de la persona responsable o de relación del centro.
Property Name As Facturae.v32.TextMax40Type(XMLNAME = "Name");

/// Primer apellido de la persona responsable o de relación del centro.
Property FirstSurname As Facturae.v32.TextMax40Type(XMLNAME = "FirstSurname");

/// Segundo apellido de la persona responsable o de relación del centro.
Property SecondSurname As Facturae.v32.TextMax40Type(XMLNAME = "SecondSurname");

/// Dirección nacional. Dirección en España.
Property AddressInSpain As Facturae.v32.AddressType(XMLNAME = "AddressInSpain");

/// Dirección en el extranjero.
Property OverseasAddress As Facturae.v32.OverseasAddressType(XMLNAME = "OverseasAddress");

/// Datos de contacto.
Property ContactDetails As Facturae.v32.ContactDetailsType(XMLNAME = "ContactDetails");

/// GLN Físico. Identificación del punto de conexión a la VAN EDI (Global Location Number). Código de barras de 13 posiciones estándar. Valores registrados por AECOC. Recoge el código de País (2p) España es "84" + Empresa (5p) + los restantes - el último es el producto + dígito de control.
Property PhysicalGLN As Facturae.v32.TextMax14Type(XMLNAME = "PhysicalGLN");

/// Punto Lógico Operacional. Código identificativo de la Empresa. Código de barras de 13 posiciones estándar. Valores registrados por AECOC. Recoge el código de País (2p) España es "84" + Empresa (5p) + los restantes - el último es el producto + dígito de control.
Property LogicalOperationalPoint As Facturae.v32.TextMax14Type(XMLNAME = "LogicalOperationalPoint");

/// Descripción del centro.
Property CentreDescription As Facturae.v32.TextMax2500Type(XMLNAME = "CentreDescription");

Relationship BusinessType As Facturae.v32.BusinessType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = AdministrativeCentres ];

Storage Default
{
<Data name="AdministrativeCentreTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CentreCode</Value>
</Value>
<Value name="3">
<Value>RoleTypeCode</Value>
</Value>
<Value name="4">
<Value>Name</Value>
</Value>
<Value name="5">
<Value>FirstSurname</Value>
</Value>
<Value name="6">
<Value>SecondSurname</Value>
</Value>
<Value name="7">
<Value>AddressInSpain</Value>
</Value>
<Value name="8">
<Value>OverseasAddress</Value>
</Value>
<Value name="9">
<Value>ContactDetails</Value>
</Value>
<Value name="10">
<Value>PhysicalGLN</Value>
</Value>
<Value name="11">
<Value>LogicalOperationalPoint</Value>
</Value>
<Value name="12">
<Value>CentreDescription</Value>
</Value>
<Value name="13">
<Value>BusinessType</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.Administrat7CAAD</DataLocation>
<DefaultData>AdministrativeCentreTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.Administrat7CAAD</IdLocation>
<IndexLocation>^Facturae.v32.Administrat7CAAI</IndexLocation>
<StreamLocation>^Facturae.v32.Administrat7CAAS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
