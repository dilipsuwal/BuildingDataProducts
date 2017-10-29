library(shiny)
shinyUI(fluidPage(
  titlePanel("Predictions using MPG"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderMPG", "Select the MPG of the car?", 10, 35, value = 20),
      radioButtons("radio", h3("Select for predictions"),
                   choices = list("Horse Power" = 1, "Displacement" = 2,
                                  "Weight" = 3),selected = 1),
      checkboxInput("showRegLine", "Show Regression Line", value = TRUE)
    ),
    mainPanel(
      plotOutput("plot1"),
      h3(textOutput("Message1")),
      h3(textOutput("Message2"))
  
    )
  )
))