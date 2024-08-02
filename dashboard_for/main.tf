resource "newrelic_one_dashboard" "example_dashboard" {
  for_each = var.dash
  name = each.value.name

  page {
    name = each.value.page_name

    widget_billboard {
      title  = each.value.billboard_title1
      row    = each.value.billboard_row1
      column = each.value.billboard_column1
      width  = each.value.billboard_width1
      height = each.value.billboard_height1

      nrql_query {
        query = each.value.billboard_query1
      }
    }
    widget_billboard {
     title  = each.value.billboard_title2
      row    = each.value.billboard_row2
      column = each.value.billboard_column2
      width  = each.value.billboard_width2
      height = each.value.billboard_height2

      nrql_query {
        query = each.value.billboard_query2
      }
    }

    widget_markdown {
      title  = each.value.mark_title1
      row    = each.value.mark_row1
      column = each.value.mark_column1
      width  = each.value.mark_width1
      height = each.value.mark_height1

      text = each.value.mark_text1
    }
    widget_markdown {
      title  = each.value.mark_title2
      row    = each.value.mark_row2
      column = each.value.mark_column2
      width  = each.value.mark_width2
      height = each.value.mark_height2

      text = each.value.mark_text2
    }
    widget_bar {
      title  = each.value.bar_title1
      row    = each.value.bar_row1
      column = each.value.bar_column1
      width  = each.value.bar_width1
      height = each.value.bar_height1

      nrql_query {
        query = each.value.bar_query1
      }
    }
     widget_bar {
     title  = each.value.bar_title2
      row    = each.value.bar_row2
      column = each.value.bar_column2
      width  = each.value.bar_width2
      height = each.value.bar_height2

      nrql_query {
        query = each.value.bar_query2
      }
    }
    widget_line {
      title  = each.value.line_title1
      row    = each.value.line_row1
      column = each.value.line_column1
      width  = each.value.line_width1
      height = each.value.line_height1

      nrql_query {
        query = each.value.line_query1
      }
    }
    widget_line {
      title  = each.value.line_title2
      row    = each.value.line_row2
      column = each.value.line_column2
      width  = each.value.line_width2
      height = each.value.line_height2

      nrql_query {
        query = each.value.line_query2
      }
    }
    widget_table {
      title  = each.value.table_title1
      row    = each.value.table_row1
      column = each.value.table_column1
      width  = each.value.table_width1
      height = each.value.table_height1

      nrql_query {
        query = each.value.table_query1
      }
    }
    widget_table {
      title  = each.value.table_title2
      row    = each.value.table_row2
      column = each.value.table_column2
      width  = each.value.table_width2
      height = each.value.table_height2

      nrql_query {
        query = each.value.table_query2
      }
    }
  }
}
