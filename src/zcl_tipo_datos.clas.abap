CLASS zcl_tipo_datos DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tipo_datos IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lv_string  TYPE string VALUE '12345678',
          lv_int     TYPE i,
          lv_date    TYPE d,
          lv_date_d  TYPE d VALUE '19750615',
          lv_time    TYPE t,
          lv_timez   TYPE c LENGTH 6,
          lv_decimal TYPE p LENGTH 3 DECIMALS 2,
          lv_numero  TYPE n LENGTH 6.


    "Declaraciones en Linea

    DATA(lv_mult)  = 8 * 16.
    DATA(lv_div) = 8 / 16.
    DATA(lv_text) = 'ABAP Daniel- 2026'.
    DATA(lv_date_inv) = '19750615'.

    DATA(lv_years) = lv_date_d(4).
    DATA(lv_month) = lv_date_d+4(2).
    DATA(lv_day) = lv_date_d+6(2).
    out->write( | Año: { lv_years } | ).
    out->write( | Mes: { lv_month } | ).
    out->write( | Dias: { lv_day } | ).

    DATA(lv_date_fec) = CONV d( lv_date_inv ).


    lv_int = lv_string.
    out->write( lv_string ).


    lv_string = '20250101'.
    lv_date = lv_string.

    out->write( lv_string ).
    out->write( | Fecha: { lv_date DATE = USER } | ).

    lv_date = cl_abap_context_info=>get_system_date(  ).
    lv_time = cl_abap_context_info=>get_system_time(  ).
    lv_timez = cl_abap_context_info=>get_user_time_zone(  ).
    out->write( | Fecha Sistema: { lv_date DATE = USER } | ).
    out->write( | Hora Sistema: { lv_time TIME = USER } | ).
    out->write( | Zona Horaria Sistema: { lv_timez } | ).
    DATA(lv_days) = lv_date - lv_date_fec.
    out->write( | Diferencia Dias: { lv_days } | ).


    lv_int = lv_date.
    out->write( | Dias: { lv_int } | ).


    lv_string = 'A1B2C3'.
    lv_numero = lv_string.
    out->write( | Extrae: { lv_numero } | ).

    out->write( | Multiplicar: { lv_mult } | ).
    out->write( | Dividir: { lv_div } | ).
    out->write( | Nombre: { lv_text } | ).
    out->write( | Fecha de Nacimiento: { lv_date_inv } | ).
    out->write( | Fecha de Nacimiento: { lv_date_fec DATE = USER } | ).


  ENDMETHOD.
ENDCLASS.
