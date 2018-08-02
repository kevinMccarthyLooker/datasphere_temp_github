view: airline {
  sql_table_name:  "gludb-euw1-stg-app-dataspheretransformeddatadb".airline;;
#   derived_table: {
#     sql: select * from "gludb-euw1-stg-app-dataspheretransformeddatadb".airline limit 10
#       ;;
#   }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: aid {
    type: number
    sql: ${TABLE}."﻿aid" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: iata {
    type: string
    sql: ${TABLE}.iata ;;
  }

  dimension: icao {
    type: string
    sql: ${TABLE}.icao ;;
  }

  dimension: callsign {
    type: string
    sql: ${TABLE}.callsign ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  set: detail {
    fields: [
      aid,
      name,
      alias,
      iata,
      icao,
      callsign,
      country,
      active
    ]
  }
}
