resource "newrelic_one_dashboard" "dashboard_with_dynamic" {
 
  name        = var.dashboard_name
  permissions = var.permissions
  page {
    name = var.page_name
     dynamic "widget_billboard" {
      for_each = var.billboard
    content{
      title  = widget_billboard.value.title
      row    = widget_billboard.value.row
      column = widget_billboard.value.column
      width  = widget_billboard.value.width
      height = widget_billboard.value.height
       nrql_query {
        query = widget_billboard.value.query
       }

      }
         }
      
  dynamic "widget_table" {
   for_each = var.table
    content{
      title  = widget_table.value.title
      row    = widget_table.value.row
      column = widget_table.value.column
      width  = widget_table.value.width
      height = widget_table.value.height
       nrql_query {
        query = widget_table.value.query

      }
         }
  }

     dynamic "widget_line" {
      for_each = var.line
    content{
      title  = widget_line.value.title
      row    = widget_line.value.row
      column = widget_line.value.column
      width  = widget_line.value.width
      height = widget_line.value.height
       nrql_query {
        query = widget_line.value.query

      }
         }    

      }

dynamic "widget_bar" {
    for_each = var.bar
    content{
      title  = widget_bar.value.title
      row    = widget_bar.value.row
      column = widget_bar.value.column
      width  = widget_bar.value.width
      height = widget_bar.value.height
       nrql_query {
        query = widget_bar.value.query

      }
         }
      }
   
   dynamic "widget_markdown" {
      for_each = var.markdown
    content{
      title  = widget_markdown.value.title
      row    = widget_markdown.value.row
      column = widget_markdown.value.column
      width  = widget_markdown.value.width
      height = widget_markdown.value.height
      text   = widget_markdown.value.text
        
   }
  }  
}
}
  