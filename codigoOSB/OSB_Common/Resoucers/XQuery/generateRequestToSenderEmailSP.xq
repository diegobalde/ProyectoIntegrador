(:: pragma bea:global-element-return element="ns0:MailSenderRequest" location="../SCHEMAS/SenderMail.xsd" ::)

declare namespace ns0 = "http://www.globallogic.com.ar/bootcamp/common/EmailRequest";
declare namespace xf = "http://tempuri.org/OSB_Common/Resoucers/XQuery/generateRequestToSenderEmailSP/";

declare function xf:generateRequestToSenderEmailSP($subject as xs:string,
    $content as xs:string)
    as element(ns0:MailSenderRequest) {
        <ns0:MailSenderRequest>
            <ns0:subject>{ $subject }</ns0:subject>
            <ns0:content>{ $content }</ns0:content>
        </ns0:MailSenderRequest>
};

declare variable $subject as xs:string external;
declare variable $content as xs:string external;

xf:generateRequestToSenderEmailSP($subject,
    $content)
