using { CapitalExpenditures as my } from '../db/schema';

using CapitalExpenditures from '../db/schema';

@path : 'service/CapitalExpenditures'
service CapitalExpendituresService
{
    @odata.draft.enabled
    entity Capex as
        projection on my.Capex;

    entity Contractors as
        projection on my.Contractors;
}

annotate CapitalExpendituresService with @requires :
[
    'authenticated-user'
];
