dashboard_name= "dashboard_with_dynamic"
permissions="public_read_only"
page_name="dynamic dashboard"
  
billboard = {
  "billboard-1" = {
title  = "request per minute"
row    = 1
column = 1
width  = 4
height = 4
query  = "FROM Transaction SELECT rate(count(*), 1 minute)"  
  }
  "billboard-2"={
title  = "request after 5 minute"
row    = 1
column = 5
width  = 4
height = 4
query  = "FROM Transaction SELECT rate(count(*), 5 minute)"  
  }
  "billboard-3"={
    title  = "request after 10 minute"
row    = 1
column = 9
width  = 4
height = 4
query  = "FROM Transaction SELECT rate(count(*), 10 minute)" 
  }
}

markdown = {
  "markdown-1" = {
 title   = "first markdown"
row     = 5
column  = 1
 width   = 4
height  = 4
text     = "first markdown"
    
  }
  "markdown-2"={
 title   = "second markdown"
row     = 5
column  = 5
width   = 4
height  = 4
text     = "second markdown"
  }
}

line ={
  "line-1"={
title       = "web transaction time"
row         = 5
column      = 9
width       = 4
height      = 4
query       = "SELECT sum(apm.service.overview.web * 1000) FROM Metric WHERE (entity.guid = 'NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg') FACET `segmentName` LIMIT MAX SINCE 7 days ago TIMESERIES UNTIL now"

  }
  "line-2"={
title       = "line"
row         = 9
column      = 1
width       = 4
height      = 4
query       = "SELECT sum(apm.service.overview.web * 1000) FROM Metric WHERE (entity.guid = 'NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg') FACET `segmentName` LIMIT MAX SINCE 7 days ago TIMESERIES UNTIL now"

  }
}

bar = {
  "bar-1" = {
title        = "Average transaction duration, by application"
row          = 9
column       = 5
width        = 4
height       = 4
query        = "FROM Transaction SELECT average(duration) FACET appName"
  }
  "bar-2"={
title        = "average transaction duration , by transaction type and application"
row          = 9
column       = 9
width        = 4
height       = 4
query        = "FROM Transaction SELECT average(duration) FACET appName"

  }
  "bar-3"={
title        = "average transaction duration , by transaction type and application"
row          = 13
column       = 1
width        = 4
height       = 4
query        = "FROM Transaction SELECT average(duration) FACET appName"

  }
}
table = {
  "table-1" = {
title      = "Table-1"
row        = 13
column     = 5
width      = 4
height     = 4
query     = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 days ago"
    
  }
  "table-2"={
title      = "Table-2"
row        = 13
column     = 9
width      = 4
height     = 4
query     = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction FACET name SINCE 7 days ago"
  }
  
}