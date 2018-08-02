connection: "gludb-euw1-stg-app-dataspheretransformeddatadb"

include: "*.view.lkml"         # include all views in this project


explore: fusion {}

explore: emp_data {}

explore: airport {
  always_filter: {
    filters: {
      field: country
      value: "-United States"
    }
  }
}
