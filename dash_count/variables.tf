variable "dashboards" {
  type =list(object({
    name =string
    page_name = string
      billboard_title1 =string
        billboard_row1 =number
        billboard_column1 =number
        billboard_width1 =number
        billboard_height1=number
        billboard_query1 = string

        billboard_title2 =string
        billboard_row2 =number
        billboard_column2 =number
        billboard_width2 =number
        billboard_height2=number
        billboard_query2 =string

        mark_title1 =string
        mark_row1 =number
        mark_column1 =number
        mark_width1=number
        mark_height1=number
        mark_text1=string
        
        mark_title2 =string
        mark_row2 =number
        mark_column2 =number
        mark_width2=number
        mark_height2=number
        mark_text2=string

        bar_title1=string
        bar_row1=number
        bar_column1=number
        bar_width1=number
        bar_height1=number
        bar_query1=string

         bar_title2=string
        bar_row2=number
        bar_column2=number
        bar_width2=number
        bar_height2=number
        bar_query2=string

        line_title1=string
        line_row1=number
        line_column1=number
        line_width1=number
        line_height1=number
        line_query1=string

        line_title2=string
        line_row2=number
        line_column2=number
        line_width2=number
        line_height2=number
        line_query2=string

        table_title1=string
        table_row1=number
        table_column1=number
        table_width1=number
        table_height1=number
        table_query1=string

        table_title2=string
        table_row2=number
        table_column2=number
        table_width2=number
        table_height2=number
        table_query2=string
  }))
}
