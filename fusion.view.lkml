view: fusion {
  sql_table_name: "gludb-euw1-stg-app-dataspheretransformeddatadb".fusion ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: campaign_header {
    type: string
    sql: ${TABLE}.campaign_header ;;
  }

  dimension: campaigncampaign_header_code {
    type: number
    sql: ${TABLE}."campaign>campaign_header_code" ;;
  }

  dimension: campaigncontractor_invoicing_group_name {
    type: string
    sql: ${TABLE}."campaign>contractor_invoicing_group_name" ;;
  }

  dimension: panelsitearea {
    type: number
    sql: ${TABLE}."panel>site>area" ;;
  }

  dimension: panel_name {
    type: string
    sql: ${TABLE}.panel_name ;;
  }

  dimension: size_type_name {
    type: string
    sql: ${TABLE}.size_type_name ;;
  }

  dimension: size_group_name {
    type: string
    sql: ${TABLE}.size_group_name ;;
  }

  dimension: frameid {
    type: string
    sql: ${TABLE}.frameid ;;
  }

  dimension: panelsiteaddress_postcode {
    type: string
    sql: ${TABLE}."panel>site>address_postcode" ;;
  }

  dimension: panelsiteareatv_area_name {
    type: string
    sql: ${TABLE}."panel>site>area>tv_area_name" ;;
  }

  dimension: all_booking_start_date {
    type: string
    sql: ${TABLE}.all_booking_start_date ;;
  }

  dimension: all_booking_finish_date {
    type: string
    sql: ${TABLE}.all_booking_finish_date ;;
  }

  dimension: environment {
    type: string
    sql: ${TABLE}.environment ;;
  }

  dimension: daypart {
    type: string
    sql: ${TABLE}.daypart ;;
  }

  dimension: auditor_data {
    type: string
    sql: ${TABLE}.auditor_data ;;
  }

  dimension: all_booking_share_of_voice_ {
    type: number
    sql: ${TABLE}."all_booking_share_of_voice_%" ;;
  }

  dimension: panel_full_id {
    type: string
    sql: ${TABLE}.panel_full_id ;;
  }

  dimension: campaignpredefined_area_name {
    type: string
    sql: ${TABLE}."campaign>pre-defined_area_name" ;;
  }

  dimension: campaign_code {
    type: number
    sql: ${TABLE}.campaign_code ;;
  }

  dimension: line_type_code {
    type: string
    sql: ${TABLE}.line_type_code ;;
  }

  dimension: line_type_name {
    type: string
    sql: ${TABLE}.line_type_name ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: selling_gross_01_2017 {
    type: number
    sql: ${TABLE}.selling_gross_01_2017 ;;
  }

  dimension: booking_count_01_2017 {
    type: number
    sql: ${TABLE}.booking_count_01_2017 ;;
  }

  dimension: frame_id_split {
    type: string
    sql: ${TABLE}.frame_id_split ;;
  }

  set: detail {
    fields: [
      campaign_header,
      campaigncampaign_header_code,
      campaigncontractor_invoicing_group_name,
      panelsitearea,
      panel_name,
      size_type_name,
      size_group_name,
      frameid,
      panelsiteaddress_postcode,
      panelsiteareatv_area_name,
      all_booking_start_date,
      all_booking_finish_date,
      environment,
      daypart,
      auditor_data,
      all_booking_share_of_voice_,
      panel_full_id,
      campaignpredefined_area_name,
      campaign_code,
      line_type_code,
      line_type_name,
      currency,
      selling_gross_01_2017,
      booking_count_01_2017,
      frame_id_split
    ]
  }
}
