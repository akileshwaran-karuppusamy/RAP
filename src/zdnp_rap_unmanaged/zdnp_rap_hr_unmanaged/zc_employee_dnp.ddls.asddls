@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
define root view entity ZC_EMPLOYEE_DNP
  provider contract transactional_query
  as projection on ZI_EMPLOYEE_DNP
{
      @UI.lineItem: [
        {
            position: 1,
            type: #FOR_ACTION,
            dataAction: 'hire',
            label: 'Hire'
        },
        {
            position: 10,
            label: 'Employee No'
        }
      ]
  key EmployeeNo,
      CreatedBy,
      CreatedOn,
      @UI.lineItem: [{ position: 20, label: 'Last Changed On' }]
      LastChangedOn,
      @UI.lineItem: [{ position: 30, label: 'Last Changed By' }]
      LastChangedBy,

      _Action,
      _Personal
}
