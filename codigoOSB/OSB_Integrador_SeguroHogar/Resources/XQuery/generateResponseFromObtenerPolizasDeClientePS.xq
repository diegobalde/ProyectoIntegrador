(:: pragma bea:global-element-parameter parameter="$obtenerPolizasResponsePS" element="ns0:ObtenerPolizasResponse" location="../SCHEMA/SeguroHogar.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObtenerCarteraResponse" location="../SCHEMA/SeguroHogar.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/bootcamp/integrador/schemas/dic";
declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generateResponseFromObtenerPolizasDeClientePS/";

declare function xf:generateResponseFromObtenerPolizasDeClientePS($obtenerPolizasResponsePS as element(ns0:ObtenerPolizasResponse))
    as element(ns0:ObtenerCarteraResponse) {
        <ns0:ObtenerCarteraResponse>
        	
            {
            if ( not( exists($obtenerPolizasResponsePS/ns0:resultadoError)))
            then
                for $polizas in $obtenerPolizasResponsePS/ns0:polizas
                return
                    <ns0:polizas>{ $polizas/@* , $polizas/node() }</ns0:polizas>
            else
	            <ns0:resultadoError>
	                <ns1:codigo>{ data($obtenerPolizasResponsePS/ns0:resultadoError/ns1:codigo) }</ns1:codigo>
	                <ns1:descripcion>{ data($obtenerPolizasResponsePS/ns0:resultadoError/ns1:descripcion) }</ns1:descripcion>
	            </ns0:resultadoError>
            }
            
        </ns0:ObtenerCarteraResponse>
};

declare variable $obtenerPolizasResponsePS as element(ns0:ObtenerPolizasResponse) external;

xf:generateResponseFromObtenerPolizasDeClientePS($obtenerPolizasResponsePS)
