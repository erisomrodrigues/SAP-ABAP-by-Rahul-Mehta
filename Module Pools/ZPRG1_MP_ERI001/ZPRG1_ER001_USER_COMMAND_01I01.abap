*----------------------------------------------------------------------*
***INCLUDE ZPRG1_MP_28_USER_COMMAND_01I01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
  SELECT carrname,
     currcode,
     url
     FROM scarr
     INTO TABLE @lt_scarr
     WHERE carrid = @scarr-carrid.

  READ TABLE lt_scarr INTO ls_scarr INDEX 1.
  IF sy-subrc IS INITIAL.
    scarr-carrname = ls_scarr-carrname.
    scarr-currcode = ls_scarr-currcode.
    scarr-url = ls_scarr-url.
  ENDIF.

*CALL SCREEN '0200'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0200  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0200 INPUT.
  CALL SCREEN '0100'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  EXIT  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE exit INPUT.
  LEAVE TO TRANSACTION 'ZTC1_ERI001'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  VALIDADE  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE validate INPUT.
  SELECT carrname,
       currcode,
       url
       FROM scarr
       INTO TABLE @lt_scarr
       WHERE carrid = @scarr-carrid.
  IF sy-subrc <> 0.
    MESSAGE e007(zmsg_eri001).
  ENDIF.
ENDMODULE.
