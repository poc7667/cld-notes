We get stuck at building a query wrapper upon the `SearchController`.

We need your support 

For now, to get the query result we need to invoke `prepareQueryAndResults` method.

However it involes private data structures and a series of preprocessor.

    public String prepareQueryAndResults(SearchResultProperties sP,
                                          String relationshipLabel,
                                          Map<String, Set<String>> mapObjectIds,
                                          Component.Apex.PageBlockTable table)


To provide frontend needs.

We do need `structure,data type information` and `data` for each query.

    interface ComponentStructure {
        id: string;
        type: string;
        component_name: string;
        api_name: string;
        component_types: Array<ComponentTypeStructure>;
        columns: Array<FieldStructure>;
        actions: Array<ActionStructure>;
        user_interface: UIStructure;
        related_list_components: Array<RelatedListEntryStructure>|null;
        parent_object_field_api_name: string|null;
    }


    interface FieldStructure {
        id: string;
        api_name: string;
        label: string;
        display_type: string;
        inline_help_text?: string;
        default_value?: any;
        picklist_values?: Array<PickListValueStructure>;
        reference_field?: string;
        reference_display_attributes?: Array<string>;
        required: boolean;
        regex?: string;
    }

Could you support providing an public query API method.

Which interface might look like

    List<String> sugesstionsQuery(String qSearchCategory, String qSearchTerm);

    List<SObject> query(String qSearchCategory, String qSearchTerm);


![inline](https://i.imgur.com/T7LQFGA.png=300x "Title")




And let me handle the reutrn JSON API in the backend.






















