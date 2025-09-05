@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumsion view for client travels 00'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity Z00_C_TRAVEL
  provider contract transactional_query as projection on Z00_R_TRAVEL
{
    key AgencyId,
    key TravelId,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    Description,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Customer_StdVH', element: 'CustomerID' } }]
    CustomerId,
    BeginDate,
    EndDate,
    Duration,
    Status,
    ChangedAt,
    ChangedBy,
    LocChangedAt,
    _Travelitem: redirected to composition child Z00_C_TRAVELITEM
}
