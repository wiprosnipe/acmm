# STOP! This file was generated by an automated process.

# Any edits you make will be lost the next time it is
# re-generated.
view: Vendor {
  sql_table_name: `Purchasing.Vendor` ;;

  dimension: VendorActive {
    sql: CASE WHEN ${TABLE}.ActiveFlag=0 THEN 'Inactive' ELSE 'Active' END ;;
  }

  dimension: VendorPreferred {
    sql: CASE WHEN ${TABLE}.PreferredVendorStatus = 0 THEN 'No' ELSE 'Yes' END ;;
  }

  dimension: Vendor_Name {
    sql: ${TABLE}.Name ;;
  }

  dimension: VendorID {
    sql: ${TABLE}.VendorID ;;
  }

  measure: VendorRating {
    type: sum
    sql: ${TABLE}.CreditRating ;;
  }
}
