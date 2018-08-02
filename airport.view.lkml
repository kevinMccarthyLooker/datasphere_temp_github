view: airport {
  sql_table_name:  "gludb-euw1-stg-app-dataspheretransformeddatadb".airport;;

#   derived_table: {
#     sql: select * from "gludb-euw1-stg-app-dataspheretransformeddatadb".airport;;
#   }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    hidden: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: id2 {
    sql: ${id} ;;

  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: iata {
    type: string
    sql: ${TABLE}.iata ;;
  }

  dimension: icao {
    type: string
    sql: ${TABLE}.icao ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: altitude {
    type: number
    sql: ${TABLE}.altitude ;;
  }

  dimension: tz {
    type: number
    sql: ${TABLE}.tz ;;
  }

  dimension: dst {
    type: string
    sql: ${TABLE}.dst;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }



  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [
      id,
      name,
      city,
      country,
      iata,
      icao,
      latitude,
      longitude,
      altitude,
      tz,
      dst,
      timezone,
      location
    ]
  }
}
