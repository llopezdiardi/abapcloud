CLASS zcl_01_hello_cloud_20 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_hello_cloud_20 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*    out->write( 'Hello Cloud' ) .
*    out->write( 'Hello Change' ) .

    DELETE FROM zdiardi_travel.
    INSERT zdiardi_travel FROM (
        SELECT FROM /dmo/travel
        FIELDS
        uuid( ) AS travel_uuid,
        travel_id,
        agency_id,
        customer_id,
        begin_date,
        end_date,
        booking_fee,
        currency_code,
        total_price,
        description,
        CASE status WHEN 'B' THEN 'A'
                    WHEN 'P' THEN 'O'
                    WHEN 'N' THEN 'O'
                    ELSE 'X' END AS overall_status,
        createdby AS local_created_by,
        createdat AS local_created_at,
        lastchangedby AS local_last_changed_by,
        lastchangedat AS local_last_changed_at,
        lastchangedat AS last_changed_at ).

     out->write( |{ sy-dbcnt } registros agregados| ) .

  ENDMETHOD.

ENDCLASS.
