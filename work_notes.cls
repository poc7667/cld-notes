
# 2017-05-24

- request for the create application using guest user

![inline](https://i.imgur.com/ApIwx7t.png=300x "Title")
![inline](https://i.imgur.com/aU7tT69.png=300x "Title")    
curl 'https://clmvp-developer-edition.na40.force.com/businessloan/apexremote' -H 'Pragma: no-cache' -H 'X-User-Agent: Visualforce-Remoting' -H 'Origin: https://clmvp-developer-edition.na40.force.com' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,zh-CN;q=0.2' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36' -H 'Content-Type: application/json' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'X-Requested-With: XMLHttpRequest' -H 'Cookie: webact=%7B%22l_vdays%22%3A124%2C%22l_visit%22%3A1483488825028%2C%22session%22%3A1493067389563%2C%22l_search%22%3A%22%22%2C%22l_dtype%22%3A%22SEO%22%2C%22l_page%22%3A%22DFC%3Aus%3Aappengine%22%2C%22counter%22%3A3%2C%22pv%22%3A1%2C%22f_visit%22%3A1482264798008%2C%22version%22%3A%22w172.1%22%2C%22d%22%3A%2270130000000sUVb%22%7D; BrowserId=iAoYv3ckRPKB4jAdRF2ezA; pctrk=056a3885-d02d-4f70-8c2e-ec360b85c417; oinfo=c3RhdHVzPURFTU8mdHlwZT0yJm9pZD0wMEQ0RTAwMDAwMDBNd0g=; autocomplete=1; oid=00D460000016kza; inst=APP_4E' -H 'Connection: keep-alive' -H 'Referer: https://clmvp-developer-edition.na40.force.com/businessloan/apex/PortalLanding' --data-binary '{"action":"clcommonportal.PortalActions","method":"invokeCustomAction","data":["8003e2c8-ee2d-4c3e-a9b5-942c5bd51784","PortalApplicationCreator","",{"guestAccountId":"485c4903-34d5-4f7b-b619-2064a0576a0b","disclosureId":"a5c46000000blY0AAI"}],"type":"rpc","tid":38,"ctx":{"csrf":"VmpFPSxNakF4Tnkwd05TMHlOMVF4Tnpvek9Eb3lOaTQyTWpsYSxTam9wR0d1M3g0bjdvaUxLYm9PeFNTLFlqQmhZVGxo","vid":"06646000000MMBH","ns":"clcommonportal","ver":39}}' --compressed

"result":{"content":[],"errorCode":"API_EXCEPTION","errorMessage":"Line number:119Exception: genesis.OriginationException: Unable to find the Lending Product. -- nullOriginationException:[category=INVALID_INPUT, errorNumber=13, rowNumber=null]: Unable to find the Lending Product.","query_id":"8003e2c8-ee2d-4c3e-a9b5-942c5bd51784","response":[],"status":"ERROR"}}]%

- invite party

curl 'https://c.na40.visual.force.com/apexremote' -H 'Pragma: no-cache' -H 'X-User-Agent: Visualforce-Remoting' -H 'Origin: https://c.na40.visual.force.com' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,zh-CN;q=0.2' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36' -H 'Content-Type: application/json' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'X-Requested-With: XMLHttpRequest' -H 'Cookie: webact=%7B%22l_vdays%22%3A124%2C%22l_visit%22%3A1483488825028%2C%22session%22%3A1493067389563%2C%22l_search%22%3A%22%22%2C%22l_dtype%22%3A%22SEO%22%2C%22l_page%22%3A%22DFC%3Aus%3Aappengine%22%2C%22counter%22%3A3%2C%22pv%22%3A1%2C%22f_visit%22%3A1482264798008%2C%22version%22%3A%22w172.1%22%2C%22d%22%3A%2270130000000sUVb%22%7D; BrowserId=iAoYv3ckRPKB4jAdRF2ezA; oinfo=c3RhdHVzPURFTU8mdHlwZT0yJm9pZD0wMEQ0RTAwMDAwMDBNd0g=; autocomplete=1; sid=00D460000016kza!ARQAQIwd12dh4tb5xjR5rWHNgiIgoqPc5Emezf8P2qmraaSqwXLxsNdybEzCwCxc.J0NobmUWv8xilH.QyrhYa6kdRDflV6F; sid_Client=6000001M3TA60000016kza; clientSrc=50.184.101.56; inst=APP_46' -H 'Connection: keep-alive' -H 'Referer: https://c.na40.visual.force.com/apex/workspace' --data-binary '{"action":"clcommon.PortalActions","method":"upsertMultipleRecords","data":["1d18972c-0c40-4e8c-a41c-79e8851f2b61","parties_invitation_list_view_primary",[{"id":"a1K46000000LXaeEAG","genesis__Party_Name__c":"Sbeha","Is_Notified__c":false}]],"type":"rpc","tid":16,"ctx":{"csrf":"VmpFPSxNakF4Tnkwd05TMHlOMVF4T0RvMU9EbzBPUzR3TlRSYSx5ZlQ1WVN0VUpaSURSQkpmYzN6c0dOLE1HTmpaVFk0","vid":"06646000002AA4x","ns":"clcommon","ver":39}}' --compressed



# 
Error on line 5, column 1: System.SObjectException: Invalid field Account.Name for Contact
AnonymousBlock: line 5, column 1

SObject contact = new Contact();
contact.put('LastName', 'Wei');
contact.put('Account.Name', 'Wei');
System.Debug(LoggingLevel.DEBUG,
        contact
);



# PEPPER

SELECT ID, name, genesis__Application__c, clcommon__Account__r.Name, clcommon__Account__c, clcommon__Account__r.clcommon__Legal_Entity_Type__r.Name FROM clcommon__Party__c where genesis__Application__c = 'a4M0E000000002vUAA'

SELECT ID, name, genesis__Application__c, clcommon__Account__r.Name, clcommon__Account__c, clcommon__Account__r.clcommon__Legal_Entity_Type__c, clcommon__Account__r.clcommon__Legal_Entity_Type__r.Name FROM clcommon__Party__c where genesis__Application__c = 'a4M0E000000002vUAA'

SELECT ID, NAME FROM clcommon__Legal_Entity__c

SELECT ID, NAME, Account.clcommon__Legal_Entity_Type__r.Name FROM CONTACT WHERE AccountID in (
        SELECT clcommon__Account__c FROM clcommon__Party__c where genesis__Application__c = 'a4M0E000000002vUAA'
        
)
SELECT Question_1_Answers__c FROM ints__Credit_Report__c


SELECT NAME, Id, clcommon__Account__c, clcommon__Account__r.Name, clcommon__Account__r.clcommon__legal_entity_type__r.Name from clcommon__party__c


# MVP

System.Debug(LoggingLevel.DEBUG,  JSON.serializePretty(
        clcommon.PortalActions.queryManyWithWhereClauseParams('','[]', 'loan_application_detail_view', new Map<String, Object>{'applicationId'=>'a3m460000004ElmAAE'}).content
));

System.Debug(LoggingLevel.DEBUG,  JSON.serializePretty(
        clcommon.PortalActions.queryManyWithWhereClauseParams('','[]', 'applications_card_view', 
            new Map<String, Object>{'applicationId'=>'a3m460000004ElmAAE'}).content
));


System.Debug(LoggingLevel.DEBUG,
new PortalApplicationCreator().invokeAction(
    new Map<String, Object>{'guestAccountId'=>'0fabab84-2f94-4cfd-acf7-6e4a338612df', 'disclousreId'=> 'a5c46000000blY0AAI'})
);


System.Debug(LoggingLevel.DEBUG,  
        new PortalApplicationStatus().invokeAction(new Map<String, Object>{'applicationId'=>'a3m460000004EptAAE'})
);

SELECT  Id, Party_Type__r.Name,Guest_Account__c, Name, FirstName__c, LastName__c, CreatedDate FROM Guest_Account__c ORDER  BY CreatedDate DESC


SELECT  ID, CreatedDate FROM genesis__Applications__c ORDER BY CreatedDate DESC


SELECT Id FROM clcommonportal__Disclosure_Definition__c

SELECT ID, Offer_Description__c, Status__c FROM genesis__Application_Pricing_Detail__c

SELECT genesis__Rate_Card_Setup_Detail__r.APR__c FROM genesis__Application_Pricing_Detail__c
