
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("evaluatr: psychological insights from words"),
  
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    helpText("Enter text below. An evaluation by psychological/linguistic categories will be displayed on the right. Word categories were derived from the Linguistic Inquiry Word Count (www.liwc.net)."),
    textInput("test1", "Text", "Enter your text here")
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    h4("Results"),
    textOutput("wc"),
    textOutput("polarityText"),
    tableOutput("resultTable")
  )
))
