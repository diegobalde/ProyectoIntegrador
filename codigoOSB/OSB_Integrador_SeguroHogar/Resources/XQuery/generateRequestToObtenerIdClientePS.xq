(:: pragma bea:global-element-parameter parameter="$obtenerCarteraRequestPS" element="ns0:ObtenerCarteraRequest" location="../SCHEMA/SeguroHogar.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObtenerIdClienteRequest" location="../SCHEMA/SeguroHogar.xsd" ::)

declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generateRequestToObtenerIdClientePS/";

declare function xf:generateRequestToObtenerIdClientePS($obtenerCarteraRequestPS as element(ns0:ObtenerCarteraRequest))
    as element(ns0:ObtenerIdClienteRequest) {
        <ns0:ObtenerIdClienteRequest>
            <ns0:tipoDocumento>{ data($obtenerCarteraRequestPS/ns0:tipoDocumento) }</ns0:tipoDocumento>
            <ns0:nroDocumento>{ data($obtenerCarteraRequestPS/ns0:nroDocumento) }</ns0:nroDocumento>
        </ns0:ObtenerIdClienteRequest>
};

declare variable $obtenerCarteraRequestPS as element(ns0:ObtenerCarteraRequest) external;

xf:generateRequestToObtenerIdClientePS($obtenerCarteraRequestPS)
