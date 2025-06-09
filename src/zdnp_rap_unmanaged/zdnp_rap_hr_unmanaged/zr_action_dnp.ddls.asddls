@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Action'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_ACTION_DNP
  as select from zdnp_action
  association to parent ZR_EMPLOYEE_DNP as _Employee on $projection.EmployeeNo = _Employee.EmployeeNo
{
  key employee_no       as EmployeeNo,
  key subtype           as Subtype,
  key begin_date        as BeginDate,
  key end_date          as EndDate,
      action_type       as ActionType,
      reason_for_action as ReasonForAction,
      _Employee
}
