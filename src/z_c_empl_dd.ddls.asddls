@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Empleados - dd'
@Metadata.allowExtensions: true
define root view entity z_c_empl_dd
  as projection on z_i_empl_dd
{


  key e_number     as EmployeeNumber,
      e_name       as EmployeeName,
      e_department as EmployeeDepartment,
      status       as EmployeeStatus,
      job_code     as JobCode,
      job_title    as JobTitle,
      email        as Email,
      start_date   as StartDate,
      end_date     as EndDate



}
