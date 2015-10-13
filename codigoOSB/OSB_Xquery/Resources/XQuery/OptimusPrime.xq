(:: pragma bea:global-element-parameter parameter="$dataAccessRequest" element="ns0:DataAccessRequest" location="../SCHEMAS/Esquema.xsd" ::)
(:: pragma bea:global-element-return element="ns0:DataAccessResponse" location="../SCHEMAS/Esquema.xsd" ::)

declare namespace ns0 = "http://servipag.cl/ESB/Common/DataAccess";
declare namespace xf = "http://tempuri.org/OSB_Xquery/Resources/XQuery/OptimusPrime/";

declare function xf:sumar($oper1 as xs:string, $oper2 as xs:string) as xs:string{

	xs:string( xs:integer($oper1) + xs:integer($oper2) )
};
declare function xf:restar($oper1 as xs:string, $oper2 as xs:string) as xs:string{

	xs:string( xs:integer($oper1) - xs:integer($oper2) )
};

declare function xf:operar ($campos as element(*)) as xs:string
{
	if ( upper-case(data($campos/Campo[1]/valor)) = 'SUMA' ) 
                      then xf:sumar( data($campos/Campo[2]/valor ), data($campos/Campo[3]/valor)) 
                      else if ( upper-case(data($campos/Campo[1]/valor)) = 'RESTA' ) 
                           then xf:restar( data($campos/Campo[2]/valor ), data($campos/Campo[3]/valor))
                           else "nada"
                     
};

declare function xf:OptimusPrime($dataAccessRequest as element(ns0:DataAccessRequest))
    as element(ns0:DataAccessResponse) {
        <ns0:DataAccessResponse>
            <Campos>
                <Campo>
                    <nombre>total</nombre>
                    <valor>
                    {
                    	xf:operar($dataAccessRequest/ns0:Body/Campos)
                    }       
                    </valor>
                </Campo>
            </Campos>
            <Errores>
                <ns0:error>0</ns0:error>
                <ns0:desc>10</ns0:desc>
            </Errores>
            <CodTransaccion>
                <ns0:nombre>{ data($dataAccessRequest/ns0:Body/MediosDePago/ns0:Codigo) }</ns0:nombre>
            </CodTransaccion>
            <ns0:tiempoBiller>30</ns0:tiempoBiller>
        </ns0:DataAccessResponse>
};

declare variable $dataAccessRequest as element(ns0:DataAccessRequest) external;

xf:OptimusPrime($dataAccessRequest)
