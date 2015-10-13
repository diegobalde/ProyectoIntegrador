(:: pragma bea:global-element-return element="ns0:InputParameters" location="../SCHEMAS/getPolizas_sp.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getPolizas";
declare namespace xf = "http://tempuri.org/Hogar/Resources/XQuery/generateRequestToGetPoliza_DB/";

declare function xf:generateRequestToGetPoliza_DB($idCliente as xs:string)
    as element(ns0:InputParameters) {
        <ns0:InputParameters>
            <ns0:P_ID_CLIENTE>{ xs:decimal($idCliente) }</ns0:P_ID_CLIENTE>
        </ns0:InputParameters>
};

declare variable $idCliente as xs:string external;

xf:generateRequestToGetPoliza_DB($idCliente)
