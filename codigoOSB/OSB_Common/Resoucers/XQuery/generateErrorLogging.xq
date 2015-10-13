xquery version "1.0" encoding "Cp1252";

declare namespace xf = "http://tempuri.org/OSB_Common/Resoucers/XQuery/generateErrorLogging/";
declare namespace ns0 = "http://globallogic.com/ErrorManager";
declare namespace ctx = "http://www.bea.com/wli/sb/context";
declare namespace tp = "http://www.bea.com/wli/sb/transports";

declare function xf:generateErrorLogging($loggerManagerRequest as element(ns0:LoggerManagerRequest),$inbound as element(*))
	as xs:string {
    	concat(
    		$inbound/ctx:transport/ctx:request/tp:headers/tp:user-header[matches(@name, 'Service')]/@value, ' - ' ,
    		$inbound/ctx:transport/ctx:request/tp:headers/tp:user-header[matches(@name, 'Operacion')]/@value, ' - ',
    		$loggerManagerRequest/ns0:RequestLoggerManager/ns0:varLogging, ' - ',
    		$loggerManagerRequest/ns0:RequestLoggerManager/ns0:message, ' - ', 
    		fn:current-dateTime())
};

declare variable $loggerManagerRequest as element(ns0:LoggerManagerRequest) external;
declare variable $inbound as element(*) external;

xf:generateErrorLogging($loggerManagerRequest, $inbound)
