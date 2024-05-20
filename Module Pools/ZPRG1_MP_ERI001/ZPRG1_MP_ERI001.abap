*&---------------------------------------------------------------------*
*& Modulpool ZPRG1_MP_28
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
PROGRAM zprg1_mp_eri001.
TABLES: scarr.

TYPES: BEGIN OF typ_scarr,
         carrname TYPE scarr-carrname,
         currcode TYPE scarr-currcode,
         url      TYPE scarr-url,
       END OF typ_scarr.

DATA: lt_scarr TYPE TABLE OF typ_scarr,
      ls_scarr TYPE typ_scarr.

INCLUDE zprg1_mp_eri001_status_0100o01.

INCLUDE zprg1_er001_user_command_01i01.
