/// Created from: C:\ISC\doc\projects\Facturae\xsd_32\Facturaev3_2.xml
Class Facturae.v32.AccountType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Facturae.v32.BICType, Facturae.v32.TextMax60Type, Facturae.v32.TextMin5Max34Type), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "http://www.facturae.es/Facturae/2009/v3.2/Facturae";

Parameter XMLNAME = "AccountType";

Parameter XMLSEQUENCE = 0;

/// IBAN. Único formato admitido para identificar la cuenta. (Recomendado)
Property IBAN As Facturae.v32.TextMin5Max34Type(XMLNAME = "IBAN");

/// Número de cuenta.
Property AccountNumber As Facturae.v32.TextMin5Max34Type(XMLNAME = "AccountNumber");

/// Código de la entidad financiera.
Property BankCode As Facturae.v32.TextMax60Type(XMLNAME = "BankCode");

/// Código de la oficina de la entidad financiera.
Property BranchCode As Facturae.v32.TextMax60Type(XMLNAME = "BranchCode");

/// Dirección de la sucursal/oficina en España.
Property BranchInSpainAddress As Facturae.v32.AddressType(XMLNAME = "BranchInSpainAddress");

/// Dirección de la sucursal/oficina en el extranjero.
Property OverseasBranchAddress As Facturae.v32.OverseasAddressType(XMLNAME = "OverseasBranchAddress");

/// Código SWIFT. Será obligatorio rellenar las 11 posiciones, utilizando los caracteres XXX cuando no se informe de la sucursal.
Property BIC As Facturae.v32.BICType(XMLNAME = "BIC");

Storage Default
{
<Data name="AccountTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>IBAN</Value>
</Value>
<Value name="3">
<Value>AccountNumber</Value>
</Value>
<Value name="4">
<Value>BankCode</Value>
</Value>
<Value name="5">
<Value>BranchCode</Value>
</Value>
<Value name="6">
<Value>BranchInSpainAddress</Value>
</Value>
<Value name="7">
<Value>OverseasBranchAddress</Value>
</Value>
<Value name="8">
<Value>BIC</Value>
</Value>
</Data>
<DataLocation>^Facturae.v32.AccountTypeD</DataLocation>
<DefaultData>AccountTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.v32.AccountTypeD</IdLocation>
<IndexLocation>^Facturae.v32.AccountTypeI</IndexLocation>
<StreamLocation>^Facturae.v32.AccountTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
