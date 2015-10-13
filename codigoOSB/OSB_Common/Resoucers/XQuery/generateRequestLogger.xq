(:: pragma  parameter="$anyType1" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:LoggerManagerRequest" location="../SCHEMAS/RequestLoggerManager.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/bootcamp/LoggerManagerSchema";
declare namespace xf = "http://tempuri.org/OSB_Common/Resoucers/XQuery/generateRequestLogger/";

declare function xf:generateRequestLogger($message as xs:string,
    $varLogger as xs:string,
    $anyType1 as element(*))
    as element(ns0:LoggerManagerRequest) {
        <ns0:LoggerManagerRequest>
            <ns0:RequestLoggerManager>
                <ns0:message>{ $message }</ns0:message>
                <ns0:varLogging>{ $varLogger }</ns0:varLogging>
                <ns0:logContent>{ $anyType1/@* , $anyType1/node() }</ns0:logContent>
            </ns0:RequestLoggerManager>
        </ns0:LoggerManagerRequest>
};

declare variable $message as xs:string external;
declare variable $varLogger as xs:string external;
declare variable $anyType1 as element(*) external;

xf:generateRequestLogger($message,
    $varLogger,
    $anyType1)
