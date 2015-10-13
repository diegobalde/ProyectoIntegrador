(:: pragma bea:global-element-parameter parameter="$obtenerIdClienteResponsePS" element="ns0:ObtenerIdClienteResponse" location="../SCHEMA/SeguroHogar.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObtenerPolizasRequest" location="../SCHEMA/SeguroHogar.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/bootcamp/integrador/schemas/dic";
declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generateRequestToObtenerPolizasDeClientePS/";

declare function xf:generateRequestToObtenerPolizasDeClientePS($obtenerIdClienteResponsePS as element(ns0:ObtenerIdClienteResponse))
    as element(ns0:ObtenerPolizasRequest) {
        <ns0:ObtenerPolizasRequest>
            <ns0:idCliente>{ data($obtenerIdClienteResponsePS/ns0:idCliente/ns1:idCliente) }</ns0:idCliente>
        </ns0:ObtenerPolizasRequest>
};

declare variable $obtenerIdClienteResponsePS as element(ns0:ObtenerIdClienteResponse) external;

xf:generateRequestToObtenerPolizasDeClientePS($obtenerIdClienteResponsePS)
