(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns1:OutputParameters" location="../SCHEMA/ObtenerPolizasDeCliente_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObtenerPolizasResponse" location="../SCHEMA/SeguroHogar.xsd" ::)

declare namespace ns2 = "http://www.globallogic.com.ar/bootcamp/integrador/schemas/dic";
declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/ObtenerPolizasDeCliente";
declare namespace ns0 = "http://bootcamp.globallogic.com.ar/SeguroHogar/schema";
declare namespace xf = "http://tempuri.org/OSB_Integrador_SeguroHogar/Resources/XQuery/generateResponseFromObtenerPolizasDeCliente/";

declare function xf:generateResponseFromObtenerPolizasDeCliente($outputParameters1 as element(ns1:OutputParameters))
    as element(ns0:ObtenerPolizasResponse) {
        <ns0:ObtenerPolizasResponse>
            {if ( $outputParameters1/ns1:P_COD_ERROR = 0 ) 
            then
                for $P_C_POLIZAS_Row in $outputParameters1/ns1:P_C_POLIZAS/ns1:P_C_POLIZAS_Row
                return
                    <ns0:polizas>
                        <ns2:idPoliza>{ xs:long( data( $P_C_POLIZAS_Row/ns1:ID_POLIZA ) ) }</ns2:idPoliza>
                        <ns2:fechaEmision>{ xs:date( substring-before(data( $P_C_POLIZAS_Row/ns1:FECHA_EMISION) ,'T') ) }</ns2:fechaEmision>
                        <ns2:fechaVencimiento>{ xs:date( substring-before(data( $P_C_POLIZAS_Row/ns1:FECHA_VENCIMIENTO) ,'T')  ) }</ns2:fechaVencimiento>
                        <ns2:tipo>{ data($P_C_POLIZAS_Row/ns1:TIPO) }</ns2:tipo>
                        <ns2:tipoPlan>{ data($P_C_POLIZAS_Row/ns1:TIPO_PLAN) }</ns2:tipoPlan>
                        {
						if ( data($P_C_POLIZAS_Row/ns1:VIGENTE) = 0  )
						then <ns2:vigente>No</ns2:vigente>
						else <ns2:vigente>Si</ns2:vigente>                         
                        }
                        <ns2:premio>{ data($P_C_POLIZAS_Row/ns1:PREMIO) }</ns2:premio>
                    </ns0:polizas>
            
            else  
            	<ns0:resultadoError>
            		<ns2:codigo>{xs:string(data($outputParameters1/ns1:P_COD_ERROR))}</ns2:codigo>
                	<ns2:descripcion>{data($outputParameters1/ns1:P_COD_DESCRIPCION)}</ns2:descripcion>
            	</ns0:resultadoError>
            }
       
        </ns0:ObtenerPolizasResponse>
};

declare variable $outputParameters1 as element(ns1:OutputParameters) external;

xf:generateResponseFromObtenerPolizasDeCliente($outputParameters1)
