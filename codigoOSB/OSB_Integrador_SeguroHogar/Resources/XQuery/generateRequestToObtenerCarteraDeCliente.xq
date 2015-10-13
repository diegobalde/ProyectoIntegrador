(:: pragma bea:global-element-parameter parameter="$obtenerCarteraRequest1" element="ns1:ObtenerCarteraRequest" location="../SCHEMA/IntegradorSeguroHogar_IF.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObtenerCarteraRequest" location="../SCHEMA/SeguroHogar.xsd" ::)

declare namespace ns1 = "http://bootcamp.globallogic.com.ar/SeguroHogar/IF/schema";
declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generateRequestToObtenerCarteraDeCliente/";

declare function xf:generateRequestToObtenerCarteraDeCliente($obtenerCarteraRequest1 as element(ns1:ObtenerCarteraRequest))
    as element(ns0:ObtenerCarteraRequest) {
        <ns0:ObtenerCarteraRequest>
            <ns0:tipoDocumento>{ data($obtenerCarteraRequest1/ns1:tipoDocumento) }</ns0:tipoDocumento>
            <ns0:nroDocumento>{ data($obtenerCarteraRequest1/ns1:nroDocumento) }</ns0:nroDocumento>
        </ns0:ObtenerCarteraRequest>
};

declare variable $obtenerCarteraRequest1 as element(ns1:ObtenerCarteraRequest) external;

xf:generateRequestToObtenerCarteraDeCliente($obtenerCarteraRequest1)
