@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Consumption'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_C_DIARDI_TRAVEL
  provider contract transactional_query
  as projection on Z_I_DIARDI_TRAVEL
{
  key TravelUuid,
      TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      Description,
      OverallStatus,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
