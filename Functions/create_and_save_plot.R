# Function to create and save the Fertilizer Price Plots
create_and_save_plot <- function(country_data, country_name, FertilizerType) {
  p <- ggplot(country_data, aes_string(x = "Date", y = FertilizerType)) + 
    geom_line() + 
    labs(title = paste(FertilizerType, "Prices in LCU in", country_name),
         x = "Date",
         y = FertilizerType) 
  
  # Save the plot
  ggsave(filename = paste0("TablesandFigures/", FertilizerType, "_Prices_", country_name, ".png"), plot = p)
}
