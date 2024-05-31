*----------------------------------------------------------------------*
***INCLUDE ZSTATE_REGION_STATUS_0100O01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
  DATA: lt_values  TYPE vrm_values,
        lwa_values TYPE vrm_value.


* SET PF-STATUS 'xxxxxxxx'.
* SET TITLEBAR 'xxx'.

  IF ztstate_region-state IS NOT INITIAL.
    REFRESH: lt_values.
    LOOP AT lt_data INTO lwa_data.
      lwa_values-key = lwa_data-region.
      lwa_values-text = lwa_data-region.
      APPEND lwa_values TO lt_values.
      CLEAR: lwa_values.

    ENDLOOP.
    CLEAR ztstate_region-state.
    CALL FUNCTION 'VRM_SET_VALUES'
      EXPORTING
        id              = 'ZTSTATE_REGION-REGION'
        values          = lt_values
      EXCEPTIONS
        id_illegal_name = 1
        OTHERS          = 2.
    IF sy-subrc <> 0.
* Implement suitable error handling here
    ENDIF.

  ENDIF.


ENDMODULE.
