@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
define root view entity ZI_EMPLOYEE_DNP
  provider contract transactional_interface
  as projection on ZR_EMPLOYEE_DNP
{
  key EmployeeNo,
      CreatedBy,
      CreatedOn,
      LastChangedOn,
      LastChangedBy,

      _Action,
      _Personal
}
