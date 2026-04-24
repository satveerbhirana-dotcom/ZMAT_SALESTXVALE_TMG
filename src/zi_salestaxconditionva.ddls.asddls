@EndUserText.label: 'Sales Tax Condition Values'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZI_SalesTaxConditionVa
  as select from ZMAT_SALESTXVALE
  association to parent ZI_SalesTaxConditionVa_S as _SalesTaxConditioAll on $projection.SingletonID = _SalesTaxConditioAll.SingletonID
{
  key COUNTRY as Country,
  key TAX_TYPE as TaxType,
  key TAX_CATEGORY as TaxCategory,
  VALUE as Value,
  @Consumption.hidden: true
  1 as SingletonID,
  _SalesTaxConditioAll
  
}
