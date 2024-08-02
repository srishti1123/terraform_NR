resource "newrelic_one_dashboard" "example_dashboard" {
  name        = "Dashboard Terraform1"

  page {
    name = "first page"

    widget_billboard {
      title  = "Requests per minute"
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = "FROM Transaction SELECT rate(count(*), 1 minute)"
      }
    }
     widget_markdown {
      title  = "Dashboard Note"
      row    = 1
      column = 7
      width  = 6
      height = 3

      text = "hello"
    }
     widget_bar {
      title  = "Average transaction duration, by application"
      row    = 4
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query      = "FROM Transaction SELECT average(duration) FACET appName"
      }

    }
     widget_line {
      title  = "Average transaction duration and the request per minute, by application"
      row    = 4
      column = 7
      width  = 6
      height = 3

      nrql_query {
        query      = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
      }

      }
      widget_table {
      title  = "table widget example"
      row    = 7
      column = 1
      width  = 6
      height =  3
      nrql_query {
       
        query   = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction  SINCE 7 day ago"
      }
    }

  }
}
