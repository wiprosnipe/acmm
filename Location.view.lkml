# STOP! This file was generated by an automated process.

# Any edits you make will be lost the next time it is
# re-generated.
view: Location {
  sql_table_name: `Production.Location` ;;

  dimension: LocationName {
    sql: ${TABLE}.Name ;;
  }

  dimension: LocationID {
    sql: ${TABLE}.LocationID ;;
  }

  measure: Availability {
    type: sum
    sql: ${TABLE}.Availability ;;
  }

  measure: CostRate {
    type: sum
    sql: ${TABLE}.CostRate ;;
  }
}
