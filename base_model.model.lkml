connection: "gludb-euw1-stg-app-dataspheretransformeddatadb"

include: "*.view.lkml"         # include all views in this project


explore: fusion {}

explore: emp_data {
  view_label:"employee"

  }

explore: airport {
#   fields:[ALL_FIELDS*,-airport.distance_between_airports]
}
explore: airline {}


explore: route {

#   view_label: "Routes"
  join: airport {

#     view_label: "Routes"
    sql_on: ${route.sid}=${airport.iata}  ;;
    type: left_outer
    relationship: many_to_one
  }
  join: airline {
    sql_on: ${route.aid}=cast(${airline.aid} as varchar) ;;
    type:  left_outer
    relationship: many_to_one
  }
}


#for distance between airports...
# explore: distance_between_airports {
#   view_name: airport
#
#   join: other_airport{
#     from: airport
#     type: cross
#     relationship: many_to_many
#   }
# }
