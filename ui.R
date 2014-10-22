library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Diamod Price Prediction"),
  sidebarPanel(
    h3("Size of carat"),
    numericInput("cr","cr:",0.1,min=0.1,max=50,step=.25),
    submitButton('Submit')
    ),
  mainPanel(
    h3("Predictions"),
    h4("Diamond Price"),
    verbatimTextOutput("op1"),
    h4("Plot with fitted value"),
    plotOutput("op2"),
    p("Documentation:",a("Diamond Price Prediction",href="DDP.html"))
    )
  ))