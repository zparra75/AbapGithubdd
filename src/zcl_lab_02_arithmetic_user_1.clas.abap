CLASS zcl_lab_02_arithmetic_user_1 DEFINITION
 PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_02_arithmetic_user_1 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lv_base_rate            TYPE p LENGTH 6 DECIMALS 2 VALUE 20,
          lv_corp_area_rate       TYPE p LENGTH 6 DECIMALS 2 VALUE 10,
          lv_medical_service_rate TYPE p LENGTH 6 DECIMALS 2 VALUE 15,
          lv_maintenance_rate     TYPE p LENGTH 6 DECIMALS 2 VALUE 35,
          lv_margin_rate          TYPE p LENGTH 6 DECIMALS 2 VALUE 10,
          lv_package_weight       TYPE p LENGTH 6 DECIMALS 2 VALUE 2,
          lv_cost_per_kg          TYPE p LENGTH 6 DECIMALS 2 VALUE 3,
          lv_total_weight         TYPE p LENGTH 6 DECIMALS 2 VALUE 38,
          lv_num_packages         TYPE p LENGTH 6 DECIMALS 2 VALUE 4,
          lv_total_cost           TYPE p LENGTH 6 DECIMALS 2 VALUE 17,
          lv_discount_threshold   TYPE p LENGTH 6 DECIMALS 2 VALUE 4,
          lv_weight               TYPE p LENGTH 6 DECIMALS 2 VALUE 5,
          lv_square_root          TYPE p LENGTH 4 DECIMALS 2,
          lv_expo                 TYPE p LENGTH 4 DECIMALS 2,
          lv_result               TYPE p LENGTH 4 DECIMALS 2,
          lv_applied_rate         TYPE p LENGTH 8 DECIMALS 2,
          lv_multi_rate           TYPE p LENGTH 6 DECIMALS 2,
          lv_total_rate           TYPE p LENGTH 6 DECIMALS 2.

    lv_total_rate = lv_base_rate + lv_corp_area_rate + lv_medical_service_rate.
    out->write( |Base Rate: { lv_base_rate } Area Rate: { lv_corp_area_rate } Service Rate: { lv_medical_service_rate } Total Rate: { lv_total_rate }| ).

    ADD 5 TO lv_total_rate.
    out->write( |Total Rate: { lv_total_rate } | ).

    lv_base_rate = lv_maintenance_rate - lv_margin_rate.
    out->write( |Mant.Rate: { lv_maintenance_rate } Margin Rate: { lv_margin_rate } Base Rate: { lv_base_rate } | ).

    SUBTRACT 4 FROM lv_base_rate.
    out->write( |Base Rate: { lv_base_rate } | ).

    lv_multi_rate = lv_package_weight * lv_cost_per_kg.
    out->write( |Pack Weight: { lv_package_weight } Cost Kg: { lv_cost_per_kg } Multi Rate: { lv_multi_rate } | ).

    MULTIPLY lv_multi_rate BY 2.
    out->write( |Multi Rate: { lv_multi_rate } | ).

    lv_applied_rate = lv_total_weight / lv_num_packages.
    out->write( |Total Weight: { lv_total_weight } Num Pack: { lv_num_packages } Applied Rate: { lv_applied_rate } | ).

    lv_applied_rate = lv_applied_rate / 3.
    out->write( |Applied Rate: { lv_applied_rate } | ).

    lv_result = lv_total_cost DIV lv_discount_threshold.
    out->write( |Total Cost: { lv_total_cost } Discount: { lv_discount_threshold } Result: { lv_result } | ).

    lv_result = lv_total_cost MOD lv_discount_threshold.
    out->write( |Total Cost: { lv_total_cost } Discount: { lv_discount_threshold } Result: { lv_result } | ).

    out->write( |Weight: { lv_weight } | ).

    lv_expo = lv_weight ** 2.
    out->write( |Weight: { lv_expo } | ).

    lv_square_root = sqrt( lv_expo ).
    out->write( |Square: { lv_square_root } | ).

  ENDMETHOD.
ENDCLASS.
