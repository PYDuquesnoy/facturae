/// XML signature class implemented to fulfill Facturae XADES signature requirements.
Class Facturae.Security.Signature Extends %XML.Security.Signature
{

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLPREFIX As STRING = "ds";

Parameter NAMESPACE = "http://www.w3.org/2000/09/xmldsig#";

Property Object As Facturae.Security.ObjectType;

}
