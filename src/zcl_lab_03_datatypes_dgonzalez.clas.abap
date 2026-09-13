CLASS zcl_lab_03_datatypes_dgonzalez DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_03_datatypes_dgonzalez IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: mv_char      TYPE c LENGTH 10 VALUE '12345',
          mv_num       TYPE i,
          mv_float     TYPE f,
          mv_float1    TYPE c LENGTH 10 VALUE '123.45',
          mv_trunc     TYPE i,
          mv_round     TYPE i,
          mv_date      TYPE d,
          mv_date_1    TYPE d,
          mv_date_2    TYPE d,
          mv_days      TYPE i,
          mv_time      TYPE t,
          mv_timestamp TYPE utclong.



    DATA: lv_string  TYPE string VALUE '1235',
          lv_int     TYPE c LENGTH 8,
          lv_date    TYPE d,
          lv_date_d  TYPE d VALUE '19750615',
          lv_time    TYPE t,
          lv_timez   TYPE c LENGTH 6,
          lv_decimal TYPE p LENGTH 3 DECIMALS 2,
          lv_numero  TYPE n LENGTH 6.


    lv_int = lv_string.
    out->write( | Valor Int: { lv_int } | ).


*Convertir a numero entero

    mv_num = mv_char.
    mv_float = mv_num.
    out->write( | Valor Char: { mv_char } | ).
    out->write( | Valor Entero: { mv_num } | ).
    out->write( | Valor Float: { mv_float STYLE = SCIENTIFIC } | ).


    mv_trunc = trunc( mv_float1 ).
    mv_round = mv_float1 + '0.5'.
    out->write( | Valor Original (Float1): { mv_float1 } | ).
    out->write( | Valor Truncado (I):    { mv_trunc } | ).
    out->write( | Valor Redondeado (I):   { mv_round } | ).

*Tipo en linea

    DATA(lv_text1) = 'ABAP'.
    out->write( | Texto:   { lv_text1 } | ).

    mv_num = CONV i( mv_char  ).
    out->write( | Numero:   { mv_num } | ).


    mv_date_1 = '20260915'.
    mv_date_2 = '20260901'.
    mv_date = cl_abap_context_info=>get_system_date(  ).
    mv_time = cl_abap_context_info=>get_system_time(  ).

    mv_days = mv_date_1 - mv_date_2.
    out->write( | Diferencia Dias: { mv_days } | ).
    out->write( | Fecha DDMMAAAA: { mv_date_1+6(2) }{ mv_date_1+4(2) }{ mv_date_1+0(4) }| ).

    mv_timestamp = utclong_current(  ).  "Tiempo actual del sistema.
    out->write( | Fecha Sistema UTCLONG: { mv_timestamp } | ).

    CONVERT UTCLONG mv_timestamp
    TIME ZONE cl_abap_context_info=>get_user_time_zone(  )
    INTO DATE mv_date
    TIME mv_time.
    out->write( | Fecha Sistema: { mv_date DATE = USER } | ).
    out->write( | Hora Sistema: { mv_time TIME = USER } | ).

    mv_timestamp = utclong_add( val = mv_timestamp days = -2 ).
    out->write( | Fecha Sistema2: { mv_timestamp } | ).



  ENDMETHOD.
ENDCLASS.
