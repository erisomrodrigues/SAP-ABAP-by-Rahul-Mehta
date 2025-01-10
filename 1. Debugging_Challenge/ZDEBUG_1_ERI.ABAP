*&---------------------------------------------------------------------*
*& Report ZDEBUG_1_ERI
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdebug_1_eri.

TYPES: BEGIN OF lty_data,
         vbeln TYPE vbeln_va,
         erdat TYPE erdat,
         erzet TYPE erzet,
         ernam TYPE ernam,
       END OF lty_data.


DATA: lt_data TYPE TABLE OF lty_data.
DATA: lwa_data TYPE  lty_data.
DATA: lv_vbeln TYPE  vbeln_va.



SELECT-OPTIONS: s_vbeln FOR lv_vbeln.

SELECT vbeln erdat erzet ernam
FROM vbak
INTO TABLE lt_data
WHERE vbeln IN s_vbeln.

LOOP AT lt_data INTO lwa_data.
  WRITE: / lwa_data-vbeln, lwa_data-erdat, lwa_data-erzet, lwa_data-ernam.
ENDLOOP.
