(:: pragma bea:global-element-parameter parameter="$polizaResponse1" element="ns0:PolizaResponse" location="../SCHEMAS/XSD_Poliza.xsd" ::)
(:: pragma bea:global-element-return element="ns0:PolizaResponse" location="../SCHEMAS/XSD_Poliza.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/poliza";
declare namespace xf = "http://tempuri.org/Hogar/Resources/XQuery/generateGetPolizaFromBS/";

declare function xf:generateGetPolizaFromBS($polizaResponse1 as element(ns0:PolizaResponse))
    as element(ns0:PolizaResponse) {
        <ns0:PolizaResponse>
            {
                for $nroPoliza in $polizaResponse1/ns0:nroPoliza
                return
                    <ns0:nroPoliza>{ data($nroPoliza) }</ns0:nroPoliza>
            }
            <ns0:tipo>{ data($polizaResponse1/ns0:tipo) }</ns0:tipo>
            {
                for $fechaEmision in $polizaResponse1/ns0:fechaEmision
                return
                    <ns0:fechaEmision>{ data($fechaEmision) }</ns0:fechaEmision>
            }
            <ns0:fechaVencimiento>{ data($polizaResponse1/ns0:fechaVencimiento) }</ns0:fechaVencimiento>
            <ns0:vigente>{ data($polizaResponse1/ns0:vigente) }</ns0:vigente>
        </ns0:PolizaResponse>
};

declare variable $polizaResponse1 as element(ns0:PolizaResponse) external;

xf:generateGetPolizaFromBS($polizaResponse1)
