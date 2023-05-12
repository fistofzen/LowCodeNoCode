using CapitalExpendituresService as service from '../../srv/service';

annotate service.Capex with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'total_cost',
            Value : total_cost,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contractor_contractor',
            Value : contractor_contractor,
        },
    ]
);
annotate service.Capex with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'total_cost',
                Value : total_cost,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contractor_contractor',
                Value : contractor_contractor,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Capex with {
    contractor @Common.Text : {
            $value : contractor.name,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
