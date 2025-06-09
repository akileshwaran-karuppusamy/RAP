@EndUserText.label: 'Employee Hire'
define root abstract entity ZD_EMPLOYEE_HIRE_DNP
{
  @EndUserText.label: 'Employee No'
  EmployeeNo  : abap.numc(8);
  @EndUserText.label: 'First Name'
  FirstName   : abap.char(40);
  @EndUserText.label: 'Last Name'
  LastName    : abap.char(40);
  @EndUserText.label: 'Date Of Birth'
  DateOfBirth : abap.dats;
}
