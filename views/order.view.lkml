view: order {
  sql_table_name: `myFirstDataset.Order` ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Order_ID ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Order_Date ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }
  measure: count {
    type: count
    drill_fields: [order_id, customer_name, order_details.count]
  }
}
