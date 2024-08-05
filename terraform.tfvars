dashboards = [
  {
    name              = "multiple_widgets"
    page_name         = "FIRST"
    billboard_title1  = "request per minute"
    billboard_row1    = 1
    billboard_column1 = 1
    billboard_width1  = 4
    billboard_height1 = 4
    billboard_query1  = "FROM Transaction SELECT rate(count(*), 1 minute)"

    billboard_title2  = "request after 5 minute"
    billboard_row2    = 1
    billboard_column2 = 5
    billboard_width2  = 4
    billboard_height2 = 4
    billboard_query2  = "FROM Transaction SELECT rate(count(*), 5 minute)"

    mark_title1       = "example text-1"
    mark_row1         = 1
    mark_column1      = 9
    mark_width1       = 4
    mark_height1      = 4
    mark_text1        = "row -1 ,column-9"

    mark_title2       = "example-text-2"
    mark_row2         = 5
    mark_column2      = 1
    mark_width2       = 4
    mark_height2      = 4
    mark_text2        = "row -5 ,column-1"

    bar_title1        = "Average transaction duration, by application"
    bar_row1          = 5
    bar_column1       = 5
    bar_width1        = 4
    bar_height1       = 4
    bar_query1        = "FROM Transaction SELECT average(duration) FACET appName"

    bar_title2        = "Average transaction duration, by transaction type and application"
    bar_row2          = 5
    bar_column2       = 9
    bar_width2        = 4
    bar_height2       = 4
    bar_query2        = "FROM Transaction SELECT average(duration) WHERE transactionType = 'Web' FACET appName"

    line_title1       = "web transaction time"
    line_row1         = 9
    line_column1      = 1
    line_width1       = 4
    line_height1      = 4
    line_query1       = "SELECT sum(apm.service.overview.web * 1000) FROM Metric WHERE (entity.guid = 'NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg') FACET `segmentName` LIMIT MAX SINCE 7 days ago TIMESERIES UNTIL now"

    line_title2       = "web transaction time"
    line_row2         = 9
    line_column2      = 5
    line_width2       = 4
    line_height2      = 4
    line_query2       = "SELECT sum(apm.service.overview.web * 1000) FROM Metric WHERE (entity.guid = 'NDQzODI2MHxBUE18QVBQTElDQVRJT058MTA4Njc3NTUyMg') FACET `segmentName` LIMIT MAX SINCE 7 days ago TIMESERIES UNTIL now"

    table_title1      = "TABLE-1"
    table_row1        = 9
    table_column1     = 9
    table_width1      = 4
    table_height1     = 4
    table_query1      = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction SINCE 7 day ago"

    table_title2      = "TABLE-2"
    table_row2        = 13
    table_column2     = 1
    table_width2      = 4
    table_height2     = 4
    table_query2      = "SELECT count(*), average(duration), max(duration), min(duration) FROM Transaction SINCE 7 day ago"
  }
]
