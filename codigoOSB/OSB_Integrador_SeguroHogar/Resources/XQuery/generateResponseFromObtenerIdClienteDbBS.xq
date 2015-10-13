(:: pragma bea:global-element-parameter parameter="$outputParameters" element="ns1:OutputParameters" location="../SCHEMA/obtenerIdCliente_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObtenerIdClienteResponse" location="../SCHEMA/SeguroHogar.xsd" ::)

declare namespace ns2 = "http://www.globallogic.com.ar/bootcamp/integrador/schemas/dic";
declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/obtenerIdCliente";
declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generateResponseFromObtenerIdClienteDbBS/";

declare function xf:generateResponseFromObtenerIdClienteDbBS($outputParameters as element(ns1:OutputParameters))
    as element(ns0:ObtenerIdClienteResponse) {
        <ns0:ObtenerIdClienteResponse>
            <ns0:idCliente>
                <ns2:idCliente>{xs:long(data($outputParameters/ns1:OBTENER_ID_CLIENTE)) }</ns2:idCliente>
            </ns0:idCliente>
        </ns0:ObtenerIdClienteResponse>
};

declare variable $outputParameters as element(ns1:OutputParameters) external;

xf:generateResponseFromObtenerIdClienteDbBS($outputParameters)
