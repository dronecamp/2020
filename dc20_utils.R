wrkshp_data_old <- function() {
  ## This will check to see if the workshop data has been updated (via a Google Form Submission)
  ## since the last time the data were retreived. 
  ##
  ## This is done by checking a cell on the "DC20 Workshop Info - Download Status" Google
  ## while not authorized (so we don't run the risk of a using a call unncessarily)
  
  library(googlesheets4)
  googlesheets4::gs4_deauth()
  
  datastat_id <- "1W3FapNJjtBqlnH_OLUCW68-77OpXuy-8eS2Yfx0RjuY"
  datastat_tbl <- range_read_cells(ss = datastat_id, sheet = "PassThru", range = "B1")
  invisible(datastat_tbl$cell[[1]]$effectiveValue$boolValue)
}

