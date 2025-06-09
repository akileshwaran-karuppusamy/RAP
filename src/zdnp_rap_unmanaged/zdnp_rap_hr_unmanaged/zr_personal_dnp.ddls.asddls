@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Personal'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_PERSONAL_DNP
  as select from zdnp_personal
  association to parent ZR_EMPLOYEE_DNP as _Employee on $projection.EmployeeNo = _Employee.EmployeeNo
{
  key employee_no   as EmployeeNo,
  key subtype       as Subtype,
  key begin_date    as BeginDate,
  key end_date      as EndDate,
      first_name    as FirstName,
      last_name     as LastName,
      full_name     as FullName,
      date_of_birth as DateOfBirth,
      _Employee
}
