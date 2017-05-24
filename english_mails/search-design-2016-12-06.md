About the design for the query response structure.

The discussion points are

- The current search response might care about the view logic structure too much.
- Highly customized view structure might be considered to move the implementation from backend to frontend.
- To implement highly customized JSON response implementation on Salesforce take 10 times longer comparing finish it on the front-end.

For example:

Each record from responding data is formed from different `Contracts, Party, Queue Contracts, ...` objects.

And for a query result, different clients(Visual page, Mint-theme, Android, iOS) can have different display logic.

- For the `VF page`. They might want to display all objects for each record.
- For the `Mint-theme`, we might need to show some objects for each record.
  - Some fields should be linked to a look-up view or detail view.
- For the `mobile platform`, we might only need to only show one object for each record.
  - Fields mentioned above on the `mobile phone` might only need to show the value without linkable features.

The backend should prepare a more generic data without interfering the data display format logic.

Take this data `Date: 2016-12-06` for example; It's a date type on the DB.
As you can see, If the backend has to specify 

 - `text type` for the visual force page.
 - `calendar type` for the mobile devices.
 - `date type` for Mint-theme

It will be tightly coupled with the clients/front-end logic.
Once the front-end needs to change the display type, the backend should change it's data type due to the view logic changed.

Preparing a customized JSON response might also take more 10 times more if I do it on the front-end side myself.





Here's our search result structure from the DB.

The response structure is similar to `[Elastic Search](https://www.elastic.co/guide/en/elasticsearch/reference/current/_the_search_api.html)` response (Sort of NoSQL, each record might be different from each other )

## Our current response
![inline](https://i.imgur.com/xbAO2vG.png=300x "Title")

## Sample response from the Elastic Search engine.
![inline](https://i.imgur.com/dTQlNny.png=300x "Title")
