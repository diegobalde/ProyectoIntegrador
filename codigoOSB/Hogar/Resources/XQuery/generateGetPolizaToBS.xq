(:: pragma bea:global-element-parameter parameter="$polizaRequest1" element="ns0:PolizaRequest" location="../SCHEMAS/XSD_Poliza.xsd" ::)
(:: pragma bea:global-element-return element="ns0:PolizaRequest" location="../SCHEMAS/XSD_Poliza.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/poliza";
declare namespace xf = "http://tempuri.org/Hogar/Resources/XQuery/generateGetPolizaToBS/";

declare function xf:generateGetPolizaToBS($polizaRequest1 as element(ns0:PolizaRequest))
    as element(ns0:PolizaRequest) {
        <ns0:PolizaRequest>
            {
                for $nroPoliza in $polizaRequest1/ns0:nroPoliza
                return
                    <ns0:nroPoliza>{ data($nroPoliza) }</ns0:nroPoliza>
            }
        </ns0:PolizaRequest>
};

declare variable $polizaRequest1 as element(ns0:PolizaRequest) external;

xf:generateGetPolizaToBS($polizaRequest1)
