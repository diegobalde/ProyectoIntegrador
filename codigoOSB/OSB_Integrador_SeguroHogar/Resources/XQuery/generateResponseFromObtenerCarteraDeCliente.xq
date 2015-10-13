(:: pragma bea:global-element-parameter parameter="$obtenerCarteraResponsePS" element="ns0:ObtenerCarteraResponse" location="../SCHEMA/SeguroHogar.xsd" ::)
(:: pragma bea:global-element-return element="ns1:ObtenerCarteraResponse" location="../SCHEMA/IntegradorSeguroHogar_IF.xsd" ::)

declare namespace ns2 = "http://www.globallogic.com.ar/bootcamp/integrador/schemas/dic";
declare namespace ns1 = "http://bootcamp.globallogic.com.ar/SeguroHogar/IF/schema";
declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generateResponseToObtenerCarteraDeCliente/";

declare function xf:generateResponseToObtenerCarteraDeCliente($obtenerCarteraResponsePS as element(ns0:ObtenerCarteraResponse))
    as element(ns1:ObtenerCarteraResponse) {
        <ns1:ObtenerCarteraResponse>
            {if ( not( exists($obtenerCarteraResponsePS/ns0:resultadoError)))
            then
                for $polizas in $obtenerCarteraResponsePS/ns0:polizas
                return
                    <ns1:polizas>
                        <ns2:idPoliza>{ data($polizas/ns2:idPoliza) }</ns2:idPoliza>
                        <ns2:fechaEmision>{ data($polizas/ns2:fechaEmision) }</ns2:fechaEmision>
                        <ns2:fechaVencimiento>{ data($polizas/ns2:fechaVencimiento) }</ns2:fechaVencimiento>
                        <ns2:tipo>{ data($polizas/ns2:tipo) }</ns2:tipo>
                        <ns2:tipoPlan>{ data($polizas/ns2:tipoPlan) }</ns2:tipoPlan>
                        <ns2:vigente>{ data($polizas/ns2:vigente) }</ns2:vigente>
                        <ns2:premio>{ data($polizas/ns2:premio) }</ns2:premio>
                    </ns1:polizas>
            else
            	<ns1:resultadoError>
	                <ns2:codigo>{ data($obtenerCarteraResponsePS/ns0:resultadoError/ns2:codigo) }</ns2:codigo>
	                <ns2:descripcion>{ data($obtenerCarteraResponsePS/ns0:resultadoError/ns2:descripcion) }</ns2:descripcion>
	            </ns1:resultadoError>
            }
            
        </ns1:ObtenerCarteraResponse>
};

declare variable $obtenerCarteraResponsePS as element(ns0:ObtenerCarteraResponse) external;

xf:generateResponseToObtenerCarteraDeCliente($obtenerCarteraResponsePS)
