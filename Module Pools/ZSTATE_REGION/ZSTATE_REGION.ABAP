*&---------------------------------------------------------------------*
*& Modulpool ZSTATE_REGION
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
PROGRAM zstate_region.

TABLES: ZTSTATE_REGION.

TYPES: BEGIN OF lty_data,
         region TYPE zderegion,
       END OF lty_data.

DATA: lt_data  TYPE TABLE OF lty_data,
      lwa_data TYPE lty_data.

INCLUDE zstate_region_user_command_i01.

INCLUDE zstate_region_status_0100o01.
