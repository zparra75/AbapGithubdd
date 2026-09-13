CLASS zcl_lab_01_var_user DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_01_var_user IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " 1. Referencias de Datos
    DATA: lv_usr  TYPE string VALUE 'DANIEL',
          lv_user TYPE REF TO string.
    lv_user = REF #( lv_usr ).
    out->write( |Username: { lv_user->* }| ).

    " 2. Variables Locales
    DATA: mv_purchase_date TYPE d,
          mv_purchase_time TYPE t,
          mv_price         TYPE f           VALUE '10.5',
          mv_tax           TYPE i           VALUE 16,
          mv_increase      TYPE decfloat16  VALUE '20.5',
          mv_discounts     TYPE decfloat34  VALUE '10.5',
          mv_type          TYPE c LENGTH 10 VALUE 'PC',
          mv_shipping      TYPE p LENGTH 8 DECIMALS 2 VALUE '40.36',
          mv_id_code       TYPE n LENGTH 4  VALUE '1110',
          mv_qr_code       TYPE xstring     VALUE '000000F5CF',
          mv_product       TYPE string      VALUE 'Laptop',
          mv_bar_code      TYPE xstring     VALUE '121211212110'.

    mv_purchase_date  = '20260615'.
    mv_purchase_time  = '084515'.

    " 3. Constantes
    CONSTANTS: mc_price     TYPE f           VALUE '10.5',
               mc_tax       TYPE i           VALUE 16,
               mc_increase  TYPE decfloat16  VALUE '20.5',
               mc_discounts TYPE decfloat34  VALUE '10.5',
               mc_type      TYPE c LENGTH 10 VALUE 'PC',
               mc_shipping  TYPE p LENGTH 8 DECIMALS 2 VALUE '40.36',
               mc_id_code   TYPE n LENGTH 4  VALUE '1110',
               mc_qr_code   TYPE xstring     VALUE '000000F5CF',
               mc_product   TYPE string      VALUE 'Laptop',
               mc_bar_code  TYPE xstring     VALUE '121211212110'.

    " 4. Tipos Estructurados Localmente y Operador VALUE
    TYPES: BEGIN OF mty_customer,
             id       TYPE i,
             customer TYPE c LENGTH 15,
             age      TYPE i,
           END OF mty_customer.

    DATA: ls_customer TYPE mty_customer.
    ls_customer = VALUE #( id = 271911 customer = 'Daniel Perez' age = 51 ).
    out->write( ls_customer ).

    " 5. Estructura Referenciando Tabla del Diccionario de Datos
    DATA ms_employees TYPE /dmo/employee_hr.
    ms_employees-client         = '100'.
    ms_employees-employee       = '0001'.
    ms_employees-first_name     = 'Dimas Daniel'.
    ms_employees-last_name      = 'Gonzalez Parra'.
    ms_employees-salary         = '1200000'.
    ms_employees-salary_currency = 'USD'.
    ms_employees-manager        = '00002'.
    out->write( ms_employees ).

    " 6. Declaraciones en Línea (Inline Declarations)
    DATA(lv_produc)       = 'Laptop'.
    DATA(lv_bar_code)     = CONV xstring( '1212121212' ).
    DATA(lv_produc_tr)    = lv_produc.
    DATA(lv_bar_code_tr)  = lv_bar_code.
    out->write( |Producto { lv_produc_tr } Bar Code { lv_bar_code_tr }| ).

  ENDMETHOD.
ENDCLASS.
