@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
define root view entity ZR_EMPLOYEE_DNP
  as select from zdnp_employee
  composition [1..*] of ZR_ACTION_DNP   as _Action
  composition [1..*] of ZR_PERSONAL_DNP as _Personal
{
  key employee_no     as EmployeeNo,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_on      as CreatedOn,
      @Semantics.user.lastChangedBy: true
      last_changed_on as LastChangedOn,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_by as LastChangedBy,

      _Action,
      _Personal
}
