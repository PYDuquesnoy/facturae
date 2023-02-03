/// Created from: C:\ISC\doc\projects\Facturae\fima_31\XAdES.xsd.xml
Class Facturae.xades.SignerRoleType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Parameter XMLNAME = "SignerRoleType";

Parameter XMLSEQUENCE = 1;

Relationship ClaimedRoles As Facturae.xades.AnyType(XMLITEMNAME = "ClaimedRole", XMLNAME = "ClaimedRoles", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = SignerRoleType ];

Property CertifiedRoles As list Of Facturae.xades.EncapsulatedPKIDataType(XMLITEMNAME = "CertifiedRole", XMLNAME = "CertifiedRoles", XMLPROJECTION = "COLLECTION");

Storage Default
{
<Data name="SignerRoleTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CertifiedRoles</Value>
</Value>
</Data>
<DataLocation>^Facturae.xades.SignerRoleTypeD</DataLocation>
<DefaultData>SignerRoleTypeDefaultData</DefaultData>
<ExtentSize>100000</ExtentSize>
<IdLocation>^Facturae.xades.SignerRoleTypeD</IdLocation>
<IndexLocation>^Facturae.xades.SignerRoleTypeI</IndexLocation>
<StreamLocation>^Facturae.xades.SignerRoleTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
