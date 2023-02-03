/// XML security object implemented to fulfill Facturae XADES signature requirements.
Class Facturae.Security.ObjectType Extends (%XML.Security.Object, %RegisteredObject, %XML.Adaptor)
{

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLPREFIX As STRING = "etsi";

Parameter NAMESPACE = "http://uri.etsi.org/01903/v1.3.2#";

Property QualifyingProperties As Facturae.xades.QualifyingPropertiesType;

}
