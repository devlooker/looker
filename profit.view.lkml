# If necessary, uncomment the line below to include explore_source.
# include: "dev_looker.model.lkml"

view: profit {
  derived_table: {
    sql:
    SELECT
    category,
    sub_category,
    profit
    FROM orders ;;
  }
  dimension: category {
    description: ""
  }
  dimension: sub_category {
    description: ""
  }
  dimension: profit {
    description: ""
    type: number
  }
}
