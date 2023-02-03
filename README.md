# Facturae
Implementa firma Xades para Facturae desde InterSytems IRIS Objectscript

Ejemplo original desarrollado por @https://github.com/isc-afuentes

## Requerimientos

* Las pruebas de han realizado con el formato Facturae v.3.2

## Configuración

### Certificado X509

Para realizar las firmas  es necesario un certificado X509 que se puede obtener de la FNMT. 

* InterSystems IRIS puede cargar este certificado cuando esta exportado en formato .PEM. 

* Es necesario cargar la parte publica y la clave privada para poder firmar un documento desde IRIS

* Se puede convertir del formato .p12 (pkcs12) al formato PEM con este comando

  ```
  openssl pkcs12 -in fnmt.p12 -out fnmt.pem -nodes
  ```

* la carga en IRIS se realiza desde el portal de gestión.

### Ficheros

Para las pruebas, son necesarios los ficheros ubicados en el directorio .\docs

| Fichero                                  | Descripción                                                  |
| ---------------------------------------- | ------------------------------------------------------------ |
| facturae_template.xml                    | Fichero de ejemplo Facturae v3.2 sin firma. En las pruebas se carga esta factura y se firma utilizando el certificado X509 cargado en Intersystems IRIS |
| Politica_Firma_formato_facturae_v3_1.pdf | Fichero con la política de firma para Facturae. Cuando se firma una factura se debe añadir el hash de este fichero como parte de la firma. En las pruebas, se puede cargar el hash directamente (defecto) o especificar la ruta al fichero de política de firma para calcularlo. |



## Instalación

* Cargar el codigo en un namespace de IRIS

## Pruebas

````Validación
do ##class(Facturae.Test).Run("C:\Test\Facturae\facturae.xml","C:\Test
\Facturae\facturae_template.xml","FNMT","2014‐12‐21 15:30:00")
````



## Validación

Utilizar la aplicación de validación http://sedeaplicaciones2.minetur.gob.es/FacturaE/
• Cargar el fichero generado C:\Test\Facturae\facturae.xml
