view: route {
  sql_table_name: "gludb-euw1-stg-app-dataspheretransformeddatadb".route ;;
#   derived_table: {
#     sql: select * from "gludb-euw1-stg-app-dataspheretransformeddatadb".route limit 10
#       ;;
#   }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: airline {
    type: string
    sql: ${TABLE}.airline ;;
  }

  dimension: aid {
    type: string
    sql: ${TABLE}.aid ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: sid {
    type: string
    sql: ${TABLE}.sid ;;
  }

  dimension: destination {
    type: string
    sql: ${TABLE}.destination ;;
  }

  dimension: did {
    type: string
    sql: ${TABLE}.did ;;
  }

  dimension: codesharre {
    type: string
    sql: ${TABLE}.codesharre ;;
  }

  dimension: stop {
    type: number
    sql: ${TABLE}.stop ;;
  }

  dimension: equipment {
    type: string
    sql: ${TABLE}.equipment ;;
  }

  set: detail {
    fields: [
      airline,
      aid,
      source,
      sid,
      destination,
      did,
      codesharre,
      stop,
      equipment
    ]
  }
}
