(:: pragma bea:global-element-parameter parameter="$obtenerPolizasResponse1" element="ns0:ObtenerPolizasResponse" location="../SCHEMA/SeguroHogar.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObtenerCarteraResponse" location="../SCHEMA/SeguroHogar.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/bootcamp/integrador/schemas/dic";
declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generetaResponseObtenerCarteraDeCliente/";

declare function xf:generetaResponseObtenerCarteraDeCliente($obtenerPolizasResponse1 as element(ns0:ObtenerPolizasResponse))
    as element(ns0:ObtenerCarteraResponse) {
        <ns0:ObtenerCarteraResponse>
            {
                for $polizas in $obtenerPolizasResponse1/ns0:polizas
                return
                    <ns0:polizas>
                        <ns1:idPoliza>{ data($polizas/ns1:idPoliza) }</ns1:idPoliza>
                        <ns1:fechaEmision>{ data($polizas/ns1:fechaEmision) }</ns1:fechaEmision>
                        <ns1:fechaVencimiento>{ data($polizas/ns1:fechaVencimiento) }</ns1:fechaVencimiento>
                        <ns1:tipo>{ data($polizas/ns1:tipo) }</ns1:tipo>
                        <ns1:tipoPlan>{ data($polizas/ns1:tipoPlan) }</ns1:tipoPlan>
                        <ns1:vigente>{ data($polizas/ns1:vigente) }</ns1:vigente>
                        <ns1:premio>{ data($polizas/ns1:premio) }</ns1:premio>
                    </ns0:polizas>
            }
        </ns0:ObtenerCarteraResponse>
};

declare variable $obtenerPolizasResponse1 as element(ns0:ObtenerPolizasResponse) external;

xf:generetaResponseObtenerCarteraDeCliente($obtenerPolizasResponse1)
