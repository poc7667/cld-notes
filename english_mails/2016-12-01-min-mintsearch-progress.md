To test the API call,
Plese login this ORG `gaurav-collections-dev.com`  and simply run this VF page.

https://c.na30.visual.force.com/apex/MintSearchGetSearchPageStructure

It will automatically invoke the API call `getMintSearchPageStructure`

And the return format will look like the following way.



        [
           {
              "statusCode":200,
              "type":"rpc",
              "tid":2,
              "ref":false,
              "action":"MintSearchRemoteAction",
              "method":"getMintSearchStructure",
              "result":"{\n  \"searchComponentList\" : [ {\n    \"searchCriteria\" : \"Queue\",\n    \"label\" : \"QUEUE\",\n    \"fieldType\" : 0,\n    \"defaultValue\" : \"\",\n    \"autoComplete\" : false\n  }, {\n    \"searchCriteria\" : \"Contract\",\n    \"label\" : \"Contract Number\",\n    \"fieldType\" : 0,\n    \"defaultValue\" : \"\",\n    \"autoComplete\" : true\n  }, {\n    \"searchCriteria\" : \"Customer\",\n    \"label\" : \"Customer Name\",\n    \"fieldType\" : 0,\n    \"defaultValue\" : \"\",\n    \"autoComplete\" : true\n  } ]\n}"
           }
        ]




    fieldType 

    global enum FieldTypeEnums {
        STRING_TYPE, NUMBER_TYPE,  PICKLIST_TYPE, DATE_TYPE
    }