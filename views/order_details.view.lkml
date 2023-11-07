view: order_details {
  sql_table_name: `myFirstDataset.Order_Details` ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }
  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.Order_ID ;;
  }
  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }
  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }
  measure: count {
    type: count
    drill_fields: [order.order_id, order.customer_name]
  }
  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }
  measure: sum_profit {
    type: sum
    sql: ${profit} ;;
  }
}
