view: sales_target {
  sql_table_name: `cohesive-geode-403810.myFirstDataset.sales_target` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }
  dimension: month_of_order_date {
    type: string
    sql: ${TABLE}.Month_of_Order_Date ;;
  }
  dimension: target {
    type: number
    sql: ${TABLE}.Target ;;
  }
  measure: count {
    type: count
  }
}
