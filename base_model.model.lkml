connection: "gludb-euw1-stg-app-dataspheretransformeddatadb"

include: "*.view.lkml"         # include all views in this project


explore: fusion {}

explore: emp_data {}

explore: airport {fields:[ALL_FIELDS*,-airport.distance_between_airports]}
explore: airline {}
explore: route {}


#for distance between airports...
explore: distance_between_airports {
  view_name: airport

  join: other_airport{
    from: airport
    type: cross
    relationship: many_to_many
  }
}
