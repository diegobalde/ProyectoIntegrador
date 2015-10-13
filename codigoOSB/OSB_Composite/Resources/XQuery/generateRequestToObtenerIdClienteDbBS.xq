(:: pragma bea:global-element-parameter parameter="$obtenerIdClienteRequestPS" element="ns1:ObtenerIdClienteRequest" location="../../../OSB_Integrador_SeguroHogar/Resources/SCHEMA/SeguroHogar.xsd" ::)
(:: pragma bea:global-element-return element="ns0:InputParameters" location="../../../OSB_Integrador_SeguroHogar/Resources/SCHEMA/obtenerIdCliente_sp.xsd" ::)

declare namespace ns1 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/obtenerIdCliente";
declare namespace xf = "http://tempuri.org/OSB_Composite/Resources/XQuery/generateRequestToObtenerIdClienteDbBS/";

declare function xf:generateRequestToObtenerIdClienteDbBS($obtenerIdClienteRequestPS as element(ns1:ObtenerIdClienteRequest))
    as element(ns0:InputParameters) {
        <ns0:InputParameters>
            <ns0:P_TIPO_DOC>{ data($obtenerIdClienteRequestPS/ns1:tipoDocumento) }</ns0:P_TIPO_DOC>
            <ns0:P_NRO_DOC>{ xs:decimal( data($obtenerIdClienteRequestPS/ns1:nroDocumento) ) }</ns0:P_NRO_DOC>
        </ns0:InputParameters>
};

declare variable $obtenerIdClienteRequestPS as element(ns1:ObtenerIdClienteRequest) external;

xf:generateRequestToObtenerIdClienteDbBS($obtenerIdClienteRequestPS)
