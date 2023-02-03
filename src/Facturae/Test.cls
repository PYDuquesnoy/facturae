/// <h2>Factura Electronica</h2>
/// 
/// <h3>Example class that signs a Facturae XML document using Caché.</h3>
/// 
/// <h4>Requeriments:</h4>
/// <ul>
///  	<li>Ensemble 2014</li>
/// </ul>
/// 
/// <h4>Quick start:</h4>
/// <ul>
///  	<li>Configure a valid FNMT certificate as a X509 Caché certificate with name <strong>FNMT</strong></li>
/// 	<li>Prepare in C:\Test\Facturae\ a valid well formed v3.2 Facturae XML example document without signature (template).</li>
/// 	<li>
/// 		Run this class
/// <example>
/// do ##class(Facturae.Test).Run("C:\Test\Facturae\facturae.xml","C:\Test\Facturae\facturae_template.xml","FNMT","2014-12-21 15:30:00")
/// </example>
/// 	</li>
///     <li>Validate the generated file <em>facturae.xml</em> in http://sedeaplicaciones2.minetur.gob.es/FacturaE/</li>
/// </ul>
/// 
/// <h4>Additional information:</h4>
/// <ul>
///  	<li>Facturae.xades: classes for http://uri.etsi.org/01903/v1.3.2# namespace.</li>
///  	<li>Facturae.xmldsig: classes for http://www.w3.org/2000/09/xmldsig# namespace.</li>
///  	<li>Facturae.v32: classes for http://www.facturae.es/Facturae/2009/v3.2/Facturae namespace.</li>
/// 		<li>Changed Facturae.v32.Double* classes parents to %String to keep number format</li>
///     <li>Changed Facturae.v32.InvoiceLineType:SequenceNumber,Quantity type to %String to keep number format</li>
/// </ul>
Class Facturae.Test Extends %RegisteredObject
{

/// Default X509 configuration to use to sign the document
Parameter X509CONFIG As %String = "FNMT";

/// Default hash (SHA1) of the signature policy file used to sign the document
Parameter SIGPOLICYHASH As %String = {$system.Encryption.Base64Decode("Ohixl6upD6av8N7pEvDABhEL6hM=")};

/// Runs Facturae test. Loads an example Facturae XML file and signs it using XADES
/// pFilename - If specified, path to output file to write signed document
/// pTemplate - Well formed example Facturae v.3.2 (without signature)
/// pX509Config - Name of X509 configuration used to sign the document
/// pSigningTime - If specified, signing time used when signing the document
/// pSigPolicyFile - If specified, path to the signature policy file used to calculate hash to sign the document  
ClassMethod Run(pFilename As %String = "C:\Test\Facturae\facturae.xml", pTemplate As %String = "C:\Test\Facturae\facturae_template.xml", pX509Config As %String = {..#X509CONFIG}, pSigningTime As %TimeStamp = "", pSigPolicyFile As %String = "") As %Status
{
	set ret = $$$OK
	try {
		// read Facturae template document
		set reader = ##class(%XML.Reader).%New()  	  	
  		$$$THROWONERROR(sc, reader.OpenFile(pTemplate))
		
		#dim tFactura As Facturae.v32.Facturae
		do reader.Correlate("Facturae","Facturae.v32.Facturae")  	
  		do reader.Next(.tFactura, .sc)
  		
  		// sign the loaded template document
  		$$$THROWONERROR(tSC, ..SignXml(.tFactura, pX509Config, pSigningTime,pSigPolicyFile, pFilename))
	} catch ex {
		set ret = ex.AsStatus()
		do $system.Status.DisplayError(ret)
	}
	quit ret
}

/// Sign XML document using X509 credentials
/// pXml - Facturae document to sign
/// pX509Config - Name of X509 configuration used to sign the document
/// pSigningTime - If specified, signing time used when signing the document
/// pSigPolicyFile - If specified, path to the signature policy file used to calculate hash to sign the document  
/// pFilename - If specified, path to output file to write signed document
ClassMethod SignXml(Output pXml As Facturae.v32.Facturae, pX509Config As %String = "", pSigningTime As %TimeStamp, pSigPolicyFile As %String = "", pFilename As %String = "") As %Status
{
	#include %soap 
	
	set ret = $$$OK
	
	try {
		// create a signature object
		#dim cred As %SYS.X509Credentials
    	set cred = ##class(%SYS.X509Credentials).GetByAlias(pX509Config)
    	set parts = $$$SOAPWSIncludeNone
    	set ref = $$$KeyInfoX509Certificate
    
    	#dim signature as Facturae.Security.Signature
    	set signature=##class(Facturae.Security.Signature).CreateX509(cred,parts,ref,.sc)
    	if $$$ISERR(sc) $$$ThrowStatus(sc)
    	
    	// assign an id to signature
    	set signature.Id="Facturae-"_$tr($zts,",.","--")
    	
    	// attach the signature to the document
    	set pXml.Signature = signature
    	
    	// required Facturae signature fields 
		set signature.Object = ##class(Facturae.Security.ObjectType).%New()
    	
    	set qualifying = ##class(Facturae.xades.QualifyingPropertiesType).%New()
    	set qualifying.SignedProperties = ##class(Facturae.xades.SignedPropertiesType).%New()
    	set qualifying.SignedProperties.Id = "SignedProperties"
    	set qualifying.Target="#"_signature.Id
    	
    	set ssprop = ##class(Facturae.xades.SignedSignaturePropertiesType).%New()
    	set ssprop.SigningTime = $zdt($h,3)
    	
    	set sce = ##class(Facturae.xades.CertIDType).%New()
    	set sce.CertDigest = ##class(Facturae.xades.DigestAlgAndValueType).%New()
    	set sce.CertDigest.DigestMethod = ##class(Facturae.xmldsig.DigestMethodType).%New()
    	set sce.CertDigest.DigestMethod.Algorithm = "http://www.w3.org/2000/09/xmldsig#sha1"
    	set sce.CertDigest.DigestValue = $system.Encryption.SHAHash("160",cred.Certificate)
    	set sce.IssuerSerial = ##class(Facturae.xmldsig.X509IssuerSerialType).%New()
    	set sce.IssuerSerial.X509IssuerName = cred.IssuerDN
    	set sce.IssuerSerial.X509SerialNumber = cred.SerialNumber
    	do ssprop.SigningCertificate.Insert(sce)
    	
    	set spi = ##class(Facturae.xades.SignaturePolicyIdentifierType).%New()
    	set spi = ##class(Facturae.xades.SignaturePolicyIdentifierType).%New()
    	set spi.SignaturePolicyId = ##class(Facturae.xades.SignaturePolicyIdType).%New()
    	set spi.SignaturePolicyId.SigPolicyId = ##class(Facturae.xades.ObjectIdentifierType).%New()
    	set spi.SignaturePolicyId.SigPolicyId.Identifier = ##class(Facturae.xades.IdentifierType).%New()
    	set spi.SignaturePolicyId.SigPolicyId.Identifier.content = "http://www.facturae.es/politica_de_firma_formato_facturae/politica_de_firma_formato_facturae_v3_1.pdf"
    	set spi.SignaturePolicyId.SigPolicyId.Description = "facturae31"
    	set spi.SignaturePolicyId.SigPolicyHash = ##class(Facturae.xades.DigestAlgAndValueType).%New()
    	set spi.SignaturePolicyId.SigPolicyHash.DigestMethod = ##class(Facturae.xmldsig.DigestMethodType).%New()
    	set spi.SignaturePolicyId.SigPolicyHash.DigestMethod.Algorithm = "http://www.w3.org/2000/09/xmldsig#sha1"
    	
    	// add policy hash
    	if pSigPolicyFile'="" {
    		set sigPolicyFile = ##class(%Stream.FileBinary).%New()
    		set sigPolicyFile.Filename = pSigPolicyFile
    		set spi.SignaturePolicyId.SigPolicyHash.DigestValue = $system.Encryption.SHAHashStream("160",pSigPolicyFile)
    	} else {
	    	set spi.SignaturePolicyId.SigPolicyHash.DigestValue = ..#SIGPOLICYHASH
    	}
    	
    	set ssprop.SignaturePolicyIdentifier = spi
    	
    	// signing time
    	if pSigningTime'="" {
    		set ssprop.SigningTime=pSigningTime
    	} else {
	    	set ssprop.SigningTime=$zdt($h,3)
    	}
    	
    	set qualifying.SignedProperties.SignedSignatureProperties = ssprop
    	
    	set srole = ##class(Facturae.xades.SignerRoleType).%New()
    	set claimed = ##class(Facturae.xades.AnyType).%New()
    	set claimed.content = "emisor"
    	do srole.ClaimedRoles.Insert(claimed)
    	set qualifying.SignedProperties.SignedSignatureProperties.SignerRole = srole
    	
    	set signature.Object.QualifyingProperties = qualifying
		set signature.KeyInfo.Id="CertificadoFirmante"
		
		#dim reference As %XML.Security.Reference
		
		// reference to SignedProperties
    	set algorithm = $$$SOAPWSexcc14n
    	set reference = ##class(%XML.Security.Reference).Create("SignedProperties",algorithm)
    	set reference.Type = "http://uri.etsi.org/01903#SignedProperties"
    	do signature.AddReference(reference)
	
		// reference to CertificadoFirmante
		set algorithm = $$$SOAPWSexcc14n
		set reference=##class(%XML.Security.Reference).Create("CertificadoFirmante",algorithm)
    	do signature.AddReference(reference)
		
		// reference to document root
		set algorithm = $$$SOAPWSEnvelopedSignature
    	set reference = ##class(%XML.Security.Reference).Create("", algorithm)
    	do signature.AddReference(reference)
    	
		// object serialized as XML
    	set document = ..GetXMLDoc(pXml)
		
		// sign the xml document
    	$$$THROWONERROR(sc, signature.SignDocument(document))
    	
    	// write xml to file
    	if pFilename'="" {
    		set writer=##class(%XML.Writer).%New()
    		$$$THROWONERROR(sc, writer.OutputToFile(pFilename))
    		do writer.RootObject(pXml)
    	}
	} catch ex {
		set ret = ex.AsStatus()
	}
	quit ret
}

/// Returns serialized xml doc
ClassMethod GetXMLDoc(object) As %XML.Document
{
    // step 1 - write object as XML to a stream
    set writer=##class(%XML.Writer).%New()
    
    set stream=##class(%GlobalCharacterStream).%New()
    set status=writer.OutputToStream(stream)
    if $$$ISERR(status) {do $System.Status.DisplayError(status) quit $$$NULLOREF}
    set status=writer.RootObject(object)
    if $$$ISERR(status) {do $System.Status.DisplayError(status) quit $$$NULLOREF}

    // step 2 - extract the %XML.Document from the stream
    set status=##class(%XML.Document).GetDocumentFromStream(stream,.document)
    if $$$ISERR(status) {do $System.Status.DisplayError(status) quit $$$NULLOREF}
    quit document
}

}
