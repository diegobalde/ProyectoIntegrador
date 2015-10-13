(:: pragma bea:global-element-return element="ns0:ObtenerPolizasRequest" location="../SCHEMA/SeguroHogar.xsd" ::)

declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generateRequestToObtenerPolizasDeClientePSPorTipoSimple/";

declare function xf:generateRequestToObtenerPolizasDeClientePSPorTipoSimple($idCliente as xs:long)
    as element(ns0:ObtenerPolizasRequest) {
        <ns0:ObtenerPolizasRequest>
            <ns0:idCliente>{ $idCliente }</ns0:idCliente>
        </ns0:ObtenerPolizasRequest>
};

declare variable $idCliente as xs:long external;

xf:generateRequestToObtenerPolizasDeClientePSPorTipoSimple($idCliente)
