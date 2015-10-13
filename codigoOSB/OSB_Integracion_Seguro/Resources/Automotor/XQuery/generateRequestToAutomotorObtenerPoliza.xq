(:: pragma bea:global-element-parameter parameter="$obtenerCarteraRequestPS" element="ns1:ObtenerCarteraRequest" location="../../OSB_Integracion_Seguro/SCHEMA/OSB_Integracion_Seguro.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCarteraRequest" location="../XSD/getCarteraInterfaz.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/Integracion/Seguros";
declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace xf = "http://tempuri.org/OSB_Integracion_Seguro/Resources/Automotor/XQuery/generateRequestToAutomotorObtenerPoliza/";

declare function xf:generateRequestToAutomotorObtenerPoliza($obtenerCarteraRequestPS as element(ns1:ObtenerCarteraRequest))
    as element(ns0:getCarteraRequest) {
        <ns0:getCarteraRequest>
            <ns0:tipoDoc>{ data($obtenerCarteraRequestPS/ns1:TIPO_DOCUMENTO) }</ns0:tipoDoc>
            <ns0:numero>{ xs:int(data($obtenerCarteraRequestPS/ns1:NRO_DOCUMENTO)) }</ns0:numero>
        </ns0:getCarteraRequest>
};

declare variable $obtenerCarteraRequestPS as element(ns1:ObtenerCarteraRequest) external;

xf:generateRequestToAutomotorObtenerPoliza($obtenerCarteraRequestPS)
