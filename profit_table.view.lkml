# If necessary, uncomment the line below to include explore_source.
# include: "dev_looker.model.lkml"
#include: "/explores/order_details.explore.lkml"

view: profit_table{
  derived_table: {
    explore_source: order_details {
      column: category {
        field: order_details.category
      }
      column: subcategory {
        field: order_details.sub_category
      }
      column: total_profit {
        field: order_details.sum_profit
      }
    }
  }
  dimension: category {
    description: ""
  }
  dimension: subcategory {
    description: ""
  }
  dimension: total_profit {
    description: ""
    type: number
  }
}
