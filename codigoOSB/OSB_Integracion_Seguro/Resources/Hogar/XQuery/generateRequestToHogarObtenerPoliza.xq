(:: pragma bea:global-element-parameter parameter="$obtenerCarteraRequestPS" element="ns0:ObtenerCarteraRequest" location="../../OSB_Integracion_Seguro/SCHEMA/OSB_Integracion_Seguro.xsd" ::)
(:: pragma bea:global-element-return element="ns1:ObtenerCarteraRequest" location="../SCHEMA/IntegradorSeguroHogar_IF.xsd" ::)

declare namespace ns1 = "http://bootcamp.globallogic.com.ar/SeguroHogar/IF/schema";
declare namespace ns0 = "http://www.globallogic.com.ar/Integracion/Seguros";
declare namespace xf = "http://tempuri.org/OSB_Integracion_Seguro/Resources/Hogar/XQuery/generateRequestToHogarObtenerPoliza/";

declare function xf:generateRequestToHogarObtenerPoliza($obtenerCarteraRequestPS as element(ns0:ObtenerCarteraRequest))
    as element(ns1:ObtenerCarteraRequest) {
        <ns1:ObtenerCarteraRequest>
            <ns1:tipoDocumento>{ data($obtenerCarteraRequestPS/ns0:TIPO_DOCUMENTO) }</ns1:tipoDocumento>
            <ns1:nroDocumento>{ data($obtenerCarteraRequestPS/ns0:NRO_DOCUMENTO) }</ns1:nroDocumento>
        </ns1:ObtenerCarteraRequest>
};

declare variable $obtenerCarteraRequestPS as element(ns0:ObtenerCarteraRequest) external;

xf:generateRequestToHogarObtenerPoliza($obtenerCarteraRequestPS)
