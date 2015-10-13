(:: pragma bea:global-element-parameter parameter="$compositeRequest1" element="CompositeRequest" location="../../../OSB_Composite/Resources/SCHEMAS/composite.xsd" ::)
(:: pragma bea:global-element-return element="ns0:InputParameters" location="../SCHEMAS/setParameter_sp.xsd" ::)

declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/setParameter";
declare namespace xf = "http://tempuri.org/OSB_MixProxys/Resources/XQuery/generateRequestToSetParameterBS/";

declare function xf:generateRequestToSetParameterBS($compositeRequest1 as element(CompositeRequest))
    as element(ns0:InputParameters) {
        <ns0:InputParameters>
            <ns0:P_IN_KEY_PARAMETER>{ data($compositeRequest1/key) }</ns0:P_IN_KEY_PARAMETER>
            <ns0:P_VALUE_PARAMETER>{ data($compositeRequest1/value) }</ns0:P_VALUE_PARAMETER>
        </ns0:InputParameters>
};

declare variable $compositeRequest1 as element(CompositeRequest) external;

xf:generateRequestToSetParameterBS($compositeRequest1)
