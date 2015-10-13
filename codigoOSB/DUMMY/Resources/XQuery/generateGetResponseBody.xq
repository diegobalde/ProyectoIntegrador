(:: pragma bea:global-element-return element="ns0:PolizaResponse" location="../SCHEMAS/XSD_Poliza.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/poliza";
declare namespace xf = "http://tempuri.org/DUMMY/Resources/XQuery/generateGetResponseBody/";

declare function xf:generateGetResponseBody($nroPoliza as xs:string)
    as element(ns0:PolizaResponse) {
        <ns0:PolizaResponse>
            <ns0:nroPoliza>{ $nroPoliza }</ns0:nroPoliza>
            <ns0:tipo>INDIVIDUAL</ns0:tipo>
            <ns0:fechaEmision>2015-09-26</ns0:fechaEmision>
            <ns0:fechaVencimiento>123</ns0:fechaVencimiento>
            <ns0:vigente>1</ns0:vigente>
        </ns0:PolizaResponse>
};

declare variable $nroPoliza as xs:string external;

xf:generateGetResponseBody($nroPoliza)
