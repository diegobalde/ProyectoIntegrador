(:: pragma bea:global-element-parameter parameter="$obtenerCarteraRequest1" element="ns1:ObtenerCarteraRequest" location="../../OSB_Integracion_Seguro/SCHEMA/OSB_Integracion_Seguro.xsd" ::)
(:: pragma bea:global-element-return element="ns0:PolizasRequestInterface" location="../Schemas/interface.xsd" ::)

declare namespace ns2 = "http://www.globallogic.com.ar/diccionario";
declare namespace ns1 = "http://www.globallogic.com.ar/Integracion/Seguros";
declare namespace ns0 = "http://www.globallogic.com.ar/interface";
declare namespace xf = "http://tempuri.org/OSB_Integracion_Seguro/Resources/ART/generateRequestToARTObtenerPoliza/";

declare function xf:generateRequestToARTObtenerPoliza($obtenerCarteraRequest1 as element(ns1:ObtenerCarteraRequest))
    as element(ns0:PolizasRequestInterface) {
        <ns0:PolizasRequestInterface>
            <ns2:cuit>{ xs:integer(data($obtenerCarteraRequest1/ns1:NRO_DOCUMENTO)) }</ns2:cuit>
        </ns0:PolizasRequestInterface>
};

declare variable $obtenerCarteraRequest1 as element(ns1:ObtenerCarteraRequest) external;

xf:generateRequestToARTObtenerPoliza($obtenerCarteraRequest1)
