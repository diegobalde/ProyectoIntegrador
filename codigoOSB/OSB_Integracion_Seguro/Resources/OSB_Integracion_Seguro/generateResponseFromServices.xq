(:: pragma bea:global-element-parameter parameter="$ARTPolizasResponse" element="ns1:PolizasResponseInterface" location="../ART/Schemas/interface.xsd" ::)
(:: pragma bea:global-element-parameter parameter="$AutomotorPolizasResponse" element="ns0:getCarteraResponse" location="../Automotor/XSD/getCarteraInterfaz.xsd" ::)
(:: pragma bea:global-element-parameter parameter="$HogarPolizasResponse" element="ns4:ObtenerCarteraResponse" location="../Hogar/SCHEMA/IntegradorSeguroHogar_IF.xsd" ::)
(:: pragma bea:global-element-return element="ns2:ObtenerCarteraResponse" location="SCHEMA/OSB_Integracion_Seguro.xsd" ::)

declare namespace ns2 = "http://www.globallogic.com.ar/Integracion/Seguros";
declare namespace ns1 = "http://www.globallogic.com.ar/interface";
declare namespace ns4 = "http://bootcamp.globallogic.com.ar/SeguroHogar/IF/schema";
declare namespace ns3 = "http://www.globallogic.com.ar/bootcamp/integrador/schemas/dic";
declare namespace ns0 = "http://www.globallogic.com.ar/getCarteraI";
declare namespace ns5 = "http://www.globallogic.com.ar/diccionario";
declare namespace xf = "http://tempuri.org/OSB_Integracion_Seguro/Resources/OSB_Integracion_Seguro/generateResponseFromServices/";

declare function xf:generateResponseFromServices($ARTPolizasResponse as element(ns1:PolizasResponseInterface),
    $AutomotorPolizasResponse as element(ns0:getCarteraResponse),
    $HogarPolizasResponse as element(ns4:ObtenerCarteraResponse))
    as element(ns2:ObtenerCarteraResponse) {
        <ns2:ObtenerCarteraResponse>
            <ns2:ART_Seguros>
                <ns1:PolizasResponseInterface>{ $ARTPolizasResponse/@* , $ARTPolizasResponse/node() }</ns1:PolizasResponseInterface>
            </ns2:ART_Seguros>
            <ns2:Hogar_Seguros>
                <ns4:ObtenerCarteraResponse>{ $HogarPolizasResponse/@* , $HogarPolizasResponse/node() }</ns4:ObtenerCarteraResponse>
            </ns2:Hogar_Seguros>
            <ns2:Automotor_Seguros>
                <ns0:getCarteraResponse>{ $AutomotorPolizasResponse/@* , $AutomotorPolizasResponse/node() }</ns0:getCarteraResponse>
            </ns2:Automotor_Seguros>
        </ns2:ObtenerCarteraResponse>
};

declare variable $ARTPolizasResponse as element(ns1:PolizasResponseInterface) external;
declare variable $AutomotorPolizasResponse as element(ns0:getCarteraResponse) external;
declare variable $HogarPolizasResponse as element(ns4:ObtenerCarteraResponse) external;

xf:generateResponseFromServices($ARTPolizasResponse,
    $AutomotorPolizasResponse,
    $HogarPolizasResponse)
