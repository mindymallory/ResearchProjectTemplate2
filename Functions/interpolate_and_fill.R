# Function to apply linear interpolation and fill up/down
interpolate_and_fill <- function(df) {
  df %>%
    mutate(across(where(is.numeric), ~ na.approx(., na.rm = FALSE))) %>% # Linear interpolation
    mutate(across(where(is.numeric), ~ na.locf(., na.rm = FALSE))) %>%  # Fill down
    mutate(across(where(is.numeric), ~ na.locf(., fromLast = TRUE, na.rm = FALSE)))    # Fill up
}

