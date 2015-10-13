(:: pragma bea:global-element-parameter parameter="$outputParameters1" element="ns0:OutputParameters" location="../SCHEMAS/getMoneda_sp.xsd" ::)
(:: pragma bea:global-element-return element="ns1:OutputParameters" location="../SCHEMAS/getMoneda.xsd" ::)

declare namespace ns1 = "http://globallogic.com.ar/bootcamp/db/sp/getMoneda";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getMoneda";
declare namespace xf = "http://tempuri.org/OSB_Moneda/Resources/XQuery/generateResponseOutputGetMonedaBS/";

declare function xf:generateResponseOutputGetMonedaBS($outputParameters1 as element(ns0:OutputParameters))
    as element(ns1:OutputParameters) {
        <ns1:OutputParameters>
            <ns1:P_ERRORCODE>{ data($outputParameters1/ns0:P_ERROR_COD) }</ns1:P_ERRORCODE>
            <ns1:P_ERRORDESCRIPTOR>{ data($outputParameters1/ns0:P_ERROR_DESCRIPTION) }</ns1:P_ERRORDESCRIPTOR>
            <ns1:P_PARAMVALUE>{ data($outputParameters1/ns0:P_VALUE_PARAMETER) }</ns1:P_PARAMVALUE>
        </ns1:OutputParameters>
};

declare variable $outputParameters1 as element(ns0:OutputParameters) external;

xf:generateResponseOutputGetMonedaBS($outputParameters1)
