
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(qdap)
source("liwcr.R")

shinyServer(function(input, output) {
  
  output$wc <- renderText({paste0("Word count: ", word_count(input$test1))})
  output$polarityText <- renderText({paste0("Polarity ", polarity(input$test1)[[2]]$ave.polarity)})
  output$resultTable <- renderTable({liwcr(input$test1, "eng.dic")})
  
})
