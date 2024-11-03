*----------------------------------------------------------------------*
***INCLUDE LZORDH_ERIF01.
*----------------------------------------------------------------------*
FORM GET_ODATE.
  IF ZORDH_ERI-ONO IS NOT INITIAL.
    ZORDH_ERI-ODATE = SY-DATUM.
  ENDIF.
ENDFORM.
