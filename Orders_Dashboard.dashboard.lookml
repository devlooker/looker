---
- dashboard: orders_dashboard
  title: Orders Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: hMOqQUspjwvKdRsI0vuthx
  elements:
  - title: Amount by Category and Subcategory
    name: Amount by Category and Subcategory
    model: dev_looker
    explore: order_details
    type: looker_bar
    fields: [order_details.average_amount, order_details.sub_category, order_details.category]
    pivots: [order_details.category]
    sorts: [order_details.category desc, order_details.average_amount desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Furniture - order_details.average_amount,
            id: Furniture - order_details.average_amount, name: Furniture}, {axisId: Electronics
              - order_details.average_amount, id: Electronics - order_details.average_amount,
            name: Electronics}, {axisId: Clothing - order_details.average_amount,
            id: Clothing - order_details.average_amount, name: Clothing}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    label_value_format: "$0"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 3
    col: 13
    width: 10
    height: 8
  - title: Profit by Category
    name: Profit by Category
    model: dev_looker
    explore: order_details
    type: looker_bar
    fields: [order_details.category, order_details.sum_profit]
    sorts: [order_details.category]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: order_details.sum_profit,
            id: order_details.sum_profit, name: Sum Profit}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 10, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "$0"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 3
    col: 2
    width: 10
    height: 8
  - title: New Tile
    name: New Tile
    model: dev_looker
    explore: order_details
    type: single_value
    fields: [order_details.sum_profit]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Profit
    value_format: "$0"
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 2
    width: 10
    height: 3
  - title: Average Amount
    name: Average Amount
    model: dev_looker
    explore: order_details
    type: single_value
    fields: [order_details.average_amount]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Amount
    value_format: "$0.0"
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 13
    width: 10
    height: 3
