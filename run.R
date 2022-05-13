library(shiny)

port <- Sys.getenv("PORT")

# Define working directory
data <- read.table("PES2019.txt",header=TRUE,sep="\t")
names(data)[1] <- "player"  #rename from "ï..player" to "player"

shiny::runApp(
  appDir = getwd(),
  host = '0.0.0.0',
  port = as.numeric(port)
)