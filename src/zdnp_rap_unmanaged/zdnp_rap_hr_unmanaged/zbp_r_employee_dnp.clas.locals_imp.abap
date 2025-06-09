CLASS lhc_Employee DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Employee RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE Employee.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE Employee.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE Employee.

    METHODS read FOR READ
      IMPORTING keys FOR READ Employee RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK Employee.

    METHODS rba_Action FOR READ
      IMPORTING keys_rba FOR READ Employee\_Action FULL result_requested RESULT result LINK association_links.

    METHODS rba_Personal FOR READ
      IMPORTING keys_rba FOR READ Employee\_Personal FULL result_requested RESULT result LINK association_links.

    METHODS cba_Action FOR MODIFY
      IMPORTING entities_cba FOR CREATE Employee\_Action.

    METHODS cba_Personal FOR MODIFY
      IMPORTING entities_cba FOR CREATE Employee\_Personal.

    METHODS hire FOR MODIFY
      IMPORTING keys FOR ACTION Employee~hire.

ENDCLASS.

CLASS lhc_Employee IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Action.
  ENDMETHOD.

  METHOD rba_Personal.
  ENDMETHOD.

  METHOD cba_Action.
  ENDMETHOD.

  METHOD cba_Personal.
  ENDMETHOD.

  METHOD hire.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Action DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE Action.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE Action.

    METHODS read FOR READ
      IMPORTING keys FOR READ Action RESULT result.

    METHODS rba_Employee FOR READ
      IMPORTING keys_rba FOR READ Action\_Employee FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_Action IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Employee.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Personal DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE Personal.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE Personal.

    METHODS read FOR READ
      IMPORTING keys FOR READ Personal RESULT result.

    METHODS rba_Employee FOR READ
      IMPORTING keys_rba FOR READ Personal\_Employee FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_Personal IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Employee.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZR_EMPLOYEE_DNP DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZR_EMPLOYEE_DNP IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
