library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    
    pairs(iris[1:input$ccount,1:4], main = "Anderson's Iris Data -- 3 species",pch = 21,bg = c("red", "green3", "blue")[unclass(iris$Species)])
    
  })
  
})
