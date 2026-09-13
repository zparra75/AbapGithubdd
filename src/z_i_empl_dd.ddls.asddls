@AbapCatalog.sqlViewName: 'ZDV_EMPL_DD'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Empleados - dd'
define root view z_i_empl_dd
  as select from zempl_dd_abap
{

  key e_number,
      e_name,
      e_department,
      status,
      job_code,
      job_title,
      start_date,
      end_date,
      email

}
