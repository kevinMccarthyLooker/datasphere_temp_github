view: airport {
  sql_table_name:  "gludb-euw1-stg-app-dataspheretransformeddatadb".airport;;

#   derived_table: {
#     sql: select * from "gludb-euw1-stg-app-dataspheretransformeddatadb".airport;;
#   }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: average_altitude {
    type: average
    sql: ${altitude} ;;
    value_format_name: decimal_0
  }

  dimension: id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: name {
#     primary_key: yes
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: city {
    hidden: yes
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
    map_layer_name: countries
  }

  dimension: city_with_country {
    label: "City"
    type: string
    sql:  concat(${city},${country}) ;;
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

#   dimension: distance_between_airports {
#     type: distance
#     start_location_field: location
#     end_location_field: other_airport.location
#   }


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
