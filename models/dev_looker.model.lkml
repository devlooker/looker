connection: "dev_looker"

# include all the views
#include: "/views/**/*.view.lkml"
include: "/**/*.view.lkml"

datagroup: dev_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dev_looker_default_datagroup

explore: order_details {
  join: order {
    type: left_outer
    sql_on: ${order_details.order_id} = ${order.order_id} ;;
    relationship: many_to_one
  }
}

explore: order {}
explore: sales_target {}
explore: profit {}
#explore: profit_table {}
