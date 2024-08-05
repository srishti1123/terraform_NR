resource "newrelic_one_dashboard" "example_dashboard" {
  count = length(var.dashboards)

  name = var.dashboards[count.index].name

  page {
    name = var.dashboards[count.index].page_name

    widget_billboard {
      title  = var.dashboards[count.index].billboard_title1
      row    = var.dashboards[count.index].billboard_row1
      column = var.dashboards[count.index].billboard_column1
      width  = var.dashboards[count.index].billboard_width1
      height = var.dashboards[count.index].billboard_height1

      nrql_query {
        query = var.dashboards[count.index].billboard_query1
      }
    }
    widget_billboard {
      title  = var.dashboards[count.index].billboard_title2
      row    = var.dashboards[count.index].billboard_row2
      column = var.dashboards[count.index].billboard_column2
      width  = var.dashboards[count.index].billboard_width2
      height = var.dashboards[count.index].billboard_height2

      nrql_query {
        query = var.dashboards[count.index].billboard_query2
      }
    }

    widget_markdown {
      title  = var.dashboards[count.index].mark_title1
      row    = var.dashboards[count.index].mark_row1
      column = var.dashboards[count.index].mark_column1
      width  = var.dashboards[count.index].mark_width1
      height = var.dashboards[count.index].mark_height1

      text = var.dashboards[count.index].mark_text1
    }
    widget_markdown {
      title  = var.dashboards[count.index].mark_title2
      row    = var.dashboards[count.index].mark_row2
      column = var.dashboards[count.index].mark_column2
      width  = var.dashboards[count.index].mark_width2
      height = var.dashboards[count.index].mark_height2

      text = var.dashboards[count.index].mark_text2
    }
    widget_bar {
      title  = var.dashboards[count.index].bar_title1
      row    = var.dashboards[count.index].bar_row1
      column = var.dashboards[count.index].bar_column1
      width  = var.dashboards[count.index].bar_width1
      height = var.dashboards[count.index].bar_height1

      nrql_query {
        query = var.dashboards[count.index].bar_query1
      }
    }
    widget_bar {
      title  = var.dashboards[count.index].bar_title2
      row    = var.dashboards[count.index].bar_row2
      column = var.dashboards[count.index].bar_column2
      width  = var.dashboards[count.index].bar_width2
      height = var.dashboards[count.index].bar_height2

      nrql_query {
        query = var.dashboards[count.index].bar_query2
      }
    }
    widget_line {
      title  = var.dashboards[count.index].line_title1
      row    = var.dashboards[count.index].line_row1
      column = var.dashboards[count.index].line_column1
      width  = var.dashboards[count.index].line_width1
      height = var.dashboards[count.index].line_height1

      nrql_query {
        query = var.dashboards[count.index].line_query1
      }
    }
    widget_line {
      title  = var.dashboards[count.index].line_title2
      row    = var.dashboards[count.index].line_row2
      column = var.dashboards[count.index].line_column2
      width  = var.dashboards[count.index].line_width2
      height = var.dashboards[count.index].line_height2

      nrql_query {
        query = var.dashboards[count.index].line_query2
      }
    }
    widget_table {
      title  = var.dashboards[count.index].table_title1
      row    = var.dashboards[count.index].table_row1
      column = var.dashboards[count.index].table_column1
      width  = var.dashboards[count.index].table_width1
      height = var.dashboards[count.index].table_height1

      nrql_query {
        query = var.dashboards[count.index].table_query1
      }
    }
    widget_table {
      title  = var.dashboards[count.index].table_title2
      row    = var.dashboards[count.index].table_row2
      column = var.dashboards[count.index].table_column2
      width  = var.dashboards[count.index].table_width2
      height = var.dashboards[count.index].table_height2

      nrql_query {
        query = var.dashboards[count.index].table_query2
      }
    }
  }
}
