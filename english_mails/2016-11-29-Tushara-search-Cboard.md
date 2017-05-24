# Questions

- The current visual force page is only illustrating the final view, but still in developing, right?
    -  ![inline](https://i.imgur.com/Oc2QvQv.png=300x "Title")

- I created an fake backend server to show the expected response JSON format.
    - Could you also provide other APIs format to us.

Would you please provide us a estimated time for the above items and expected responese schema and sample data content.

Really appreciate your effort.

# For the search function API design.

## Search for contracts

From the frontend side we will do a search with the this request format.

- http://2ec6d6fd.ngrok.io/api/v1/contracts
- http://2ec6d6fd.ngrok.io/api/v1/contracts?q_contract_name=Baumbach&q_source_system=B
- http://2ec6d6fd.ngrok.io/api/v1/contracts?q_contract_name=Baumbach


We expect the JSON response shoule in the following format


    {
      "schema": [
        {
          "field_name": "id",
          "field_type": "integer"
        },
        {
          "field_name": "contract_name",
          "field_type": "string"
        },
        {
          "field_name": "days_past_due",
          "field_type": "integer"
        },
        {
          "field_name": "delinquent_amount",
          "field_type": "integer"
        },
        {
          "field_name": "external_id",
          "field_type": "integer"
        },
        {
          "field_name": "source_system",
          "field_type": "string"
        },
        {
          "field_name": "queue_contract",
          "field_type": "string"
        },
        {
          "field_name": "created_at",
          "field_type": "datetime"
        },
        {
          "field_name": "updated_at",
          "field_type": "datetime"
        }
      ],
      "items": [
        {
          "id": 101,
          "contract_name": "Helmer Ebert",
          "days_past_due": 11,
          "delinquent_amount": 82,
          "external_id": 82,
          "source_system": "A",
          "queue_contract": "Connie Cronin",
          "created_at": "2016-11-30T02:21:39.997Z",
          "updated_at": "2016-11-30T02:21:39.997Z"
        },
        {
          "id": 102,
          "contract_name": "Gaylord Langworth",
          "days_past_due": 16,
          "delinquent_amount": 98,
          "external_id": 89,
          "source_system": "E",
          "queue_contract": "Marcellus Stoltenberg",
          "created_at": "2016-11-30T02:21:40.001Z",
          "updated_at": "2016-11-30T02:21:40.001Z"
        } ...
        ]


# For fetching contract detail API design

### autocomplete-suggestion API

should only return a list of string.

### getContractWithParty

### getPartiesForContactPref

### getContract and getContractSearch - get details of all fields from the required field sets.

### getSelected



## Better design for the backend API

### getSearchSuggestions


        public String getSearchSuggestions() {
            String searchText = Apexpages.currentPage().getParameters().get('q');
            String searchCategory = Apexpages.currentPage().getParameters().get('c');
            Set<String> objects;
            if (searchCategory !=null && !String.isBlank(searchCategory)) {
                objects = new Set<String>{searchCategory};
            }
            Map<String, SearchAssistResult> mapSearchResult = searchAssist(objects, searchText);
            List<SearchAssistResult> searchResults = mapSearchResult.values();
            searchResults.sort();
            return JSON.serialize(searchResults);
        }


This public method `getSearchSuggestions()` takes no argument.

It's hard to write a test method to verify this method.

How about add one more simple function to parse the parameters and invoke the search.

So that we can write a test for the important search function to gurantee we won't degenerate or break our existing functions in the future.

        public String getSearchSuggestions() {
            String searchText = Apexpages.currentPage().getParameters().get('q');
            String searchCategory = Apexpages.currentPage().getParameters().get('c');
            return doSearchSuggestions(searchText, searchCategory);
        }

        publis String doSearchSuggestions(String searchText, String searchCategory){
            .....
            return JSON.serialize(searchResults);            
        }