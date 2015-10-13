(:: pragma bea:global-element-parameter parameter="$inputParameters1" element="ns1:InputParameters" location="../SCHEMAS/getMoneda.xsd" ::)
(:: pragma bea:global-element-return element="ns0:InputParameters" location="../SCHEMAS/getMoneda_sp.xsd" ::)

declare namespace ns1 = "http://globallogic.com.ar/bootcamp/db/sp/getMoneda";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/getMoneda";
declare namespace xf = "http://tempuri.org/OSB_Moneda/Resources/XQuery/generateRequestInputGetMonedaBS/";

declare function xf:generateRequestInputGetMonedaBS($inputParameters1 as element(ns1:InputParameters))
    as element(ns0:InputParameters) {
        <ns0:InputParameters>
            <ns0:P_IN_KEY_PARAMETER>{ data($inputParameters1/ns1:P_PARAMETER) }</ns0:P_IN_KEY_PARAMETER>
        </ns0:InputParameters>
};

declare variable $inputParameters1 as element(ns1:InputParameters) external;

xf:generateRequestInputGetMonedaBS($inputParameters1)
