
replace_month <- function(date_string) {
  month_mapping <- c("JANUARY" = "1", "FEBRUARY" = "2", "MARCH" = "3", 
                     "APRIL" = "4", "MAY" = "5", "JUNE" = "6", 
                     "JULY" = "7", "AUGUST" = "8", "SEPTEMBER" = "9", 
                     "OCTOBER" = "10", "NOVEMBER" = "11", "DECEMBER" = "12")
  for (month in names(month_mapping)) {
    date_string <- gsub(month, month_mapping[[month]], date_string, ignore.case = TRUE)
  }
  return(date_string)
}