For now, I could fetch the sub-level query for `User` and `Queue` information which is related to Loan_Account(Top level) and Party(Second level).

Please have a look at `MintSearchController.getSearchResult()`

![inline](https://i.imgur.com/p12VOS5.png=300x "Title")

# The table name and field name for a query might be varied irregularly.

For example, when we built a query `SELECT Name, Queue__c, User__c FROM Queue_Contract__c WHERE Loan_Account_Id__c='a0z360000018V8qAAE'` from the search field structure JSON.

We might keep doing the subquery for `Queue__c`, `User__c`  from the above query result.

    `SELECT Id, Name from Queue__c`

    `SELECT Id, Name from User__c`

However, the query for `User__c` won't work. For this moment, I did a dirty and buggy workaround to handle the irregular form problem. `MintSearchResponse.formalizeTableName(String tableName)`

Otherwise, We will get this exception `sObject type 'User__c' is not supported. If you are attempting to use a custom object, be sure to append the '__c' after the entity name. Please reference your WSDL or the describe call for the appropriate names.`

Also, for building our own nested query. I ran into some exceptions

- No such column 'Loan_Account_Id__c' on entity 'clcommon__Party__c'

In short, I could not revert the JSON information(From `MintFieldsStructureJSON`) into a proper format of SOQL statement for now.

# The search function still needs to rewrite.

As you can see `MintSearchController.getSearchResult()` will only return the same result for this moment.

Because I need to build our own search method whose result is configurable for building our query.

The search function provide by Gaurav is not configurable for our MintTheme search.

All we need is the get the list of `Loan_Account_Id` for building our top level query.

But his search `MintSearchBaseController.prepareQueryAndResults()` will not only handle the rendering view components recursively but also generate a query statement like this. `SELECT name, days_past_due__c, delinquent_amount__c, external_id__c, source_system__c,
(SELECT queue__c, user__c FROM queue_contracts__r),
(SELECT clcommon__account__c, clcommon__contact__c FROM parties__r)
FROM loan_account__c`

Having tried to figure out his logic and extract what we need for several days, but I still could not.

Regards,

Wei
