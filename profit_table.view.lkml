# If necessary, uncomment the line below to include explore_source.
# include: "dev_looker.model.lkml"

view: profit_table{
  derived_table: {
    explore_source: order_details {
      column: category {}
      column: sub_category {}
      column: sum_profit {}
    }
  }
  dimension: category {
    description: ""
  }
  dimension: sub_category {
    description: ""
  }
  dimension: sum_profit {
    description: ""
    type: number
  }
}
