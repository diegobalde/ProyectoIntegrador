(:: pragma bea:global-element-parameter parameter="$obtenerPolizasRequestPS" element="ns0:ObtenerPolizasRequest" location="../SCHEMA/SeguroHogar.xsd" ::)
(:: pragma bea:global-element-return element="ns1:InputParameters" location="../SCHEMA/ObtenerPolizasDeCliente_sp.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/ObtenerPolizasDeCliente";
declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generateRequestToObtenerPolizasDeClienteDbBS/";

declare function xf:generateRequestToObtenerPolizasDeClienteDbBS($obtenerPolizasRequestPS as element(ns0:ObtenerPolizasRequest))
    as element(ns1:InputParameters) {
        <ns1:InputParameters>
            <ns1:P_ID_CLIENTE>{ xs:decimal( data($obtenerPolizasRequestPS/ns0:idCliente) ) }</ns1:P_ID_CLIENTE>
        </ns1:InputParameters>
};

declare variable $obtenerPolizasRequestPS as element(ns0:ObtenerPolizasRequest) external;

xf:generateRequestToObtenerPolizasDeClienteDbBS($obtenerPolizasRequestPS)
