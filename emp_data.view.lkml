view: emp_data {
  sql_table_name: "gludb-euw1-stg-app-dataspheretransformeddatadb".emp_data ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}.employee_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: manager_email {
    type: string
    sql: ${TABLE}.manager_email ;;
  }

  dimension: hire_date {
    type: string
    sql: ${TABLE}.hire_date ;;
  }

  dimension: termination_date {
    type: string
    sql: ${TABLE}.termination_date ;;
  }

  dimension: voluntary {
    type: string
    sql: ${TABLE}.voluntary ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: office_location {
    type: string
    sql: ${TABLE}.office_location ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: business_unit {
    type: string
    sql: ${TABLE}.business_unit ;;
  }

  dimension: performance_rating {
    type: string
    sql: ${TABLE}.performance_rating ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}.function ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.level ;;
  }

  dimension: 9box {
    type: number
    sql: ${TABLE}."9-box" ;;
  }

  dimension: compensation_band {
    type: string
    sql: ${TABLE}.compensation_band ;;
  }

  dimension: last_promoted_date {
    type: string
    sql: ${TABLE}.last_promoted_date ;;
  }

  dimension: high_potential {
    type: string
    sql: ${TABLE}.high_potential ;;
  }

  dimension: agency_network {
    type: string
    sql: ${TABLE}.agency_network ;;
  }

  dimension: companyagency {
    type: string
    sql: ${TABLE}."company/agency" ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
  }

  dimension: title_classification {
    type: string
    sql: ${TABLE}.title_classification ;;
  }

  dimension: department_name {
    type: string
    sql: ${TABLE}.department_name ;;
  }

  dimension: department_numbercost_center {
    type: string
    sql: ${TABLE}."department_number/cost_center" ;;
  }

  dimension: board_member__uk_only_ {
    type: string
    sql: ${TABLE}.board_member__uk_only_ ;;
  }

  set: detail {
    fields: [
      status,
      employee_id,
      email,
      first_name,
      last_name,
      manager_email,
      hire_date,
      termination_date,
      voluntary,
      gender,
      office_location,
      city,
      country,
      region,
      business_unit,
      performance_rating,
      function,
      level,
      9box,
      compensation_band,
      last_promoted_date,
      high_potential,
      agency_network,
      companyagency,
      job_title,
      title_classification,
      department_name,
      department_numbercost_center,
      board_member__uk_only_
    ]
  }
}
