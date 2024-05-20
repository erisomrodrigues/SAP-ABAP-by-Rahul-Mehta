*----------------------------------------------------------------------*
***INCLUDE ZPRG1_MP_28_STATUS_0100O01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.

 LOOP AT SCREEN.
   IF SCREEN-NAME = 'SCARR-CARRNAME' OR SCREEN-NAME = 'SCARR-CURRCODE' OR SCREEN-NAME = 'SCARR-URL'.
     SCREEN-output = 0.
     MODIFY SCREEN.
   ENDIF.

 ENDLOOP.
 SET PF-STATUS 'HEADER'.
 SET TITLEBAR 'HDR'.
ENDMODULE.
*&---------------------------------------------------------------------*
*& Module STATUS_0200 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0200 OUTPUT.
 SET PF-STATUS 'ITEM'.
 SET TITLEBAR 'ITM'.
ENDMODULE.
