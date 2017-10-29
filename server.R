library(shiny)
shinyServer(function(input, output) {
  
  output$Message1 <- renderText({
    
    inputStr <- if (input$radio == 1) "Horse Power" else if (input$radio == 2) "Displacement" else "Weight"
    paste("Predicted", inputStr, "from the Model is")
    
  })
  
  output$plot1 <- renderPlot({
    
    mpgInput <- input$sliderMPG
    
    if (input$radio == 1)
      plot(mtcars$mpg, mtcars$hp, xlab = "Miles Per Gallon", 
         ylab = "Horsepower", bty = "o", pch = 16,
         xlim = c(10, 35), ylim = c(50, 500))
 
    else if (input$radio == 2)
      plot(mtcars$mpg, mtcars$disp, xlab = "Miles Per Gallon", 
           ylab = "Displacement", bty = "o", pch = 16,
           xlim = c(10, 35), ylim = c(50, 500))
    else
      plot(mtcars$mpg, mtcars$wt, xlab = "Miles Per Gallon", 
           ylab = "Weight", bty = "o", pch = 16,
           xlim = c(10, 35), ylim = c(1, 10))
    
    if(input$showRegLine){
      
      if(input$radio == 1)
        abline(lm(hp ~ mpg, data = mtcars), col = "red", lwd = 2)
      else if (input$radio == 2)
        abline(lm(disp ~ mpg, data = mtcars), col = "red", lwd = 2)
      else
        abline(lm(wt ~ mpg, data = mtcars), col = "red", lwd = 2)
    }
    
    if(input$radio == 1)
      points(mpgInput, predict(lm(hp ~ mpg, data = mtcars), newdata = data.frame(mpg = mpgInput)), col = "red", pch = 16, cex = 2)
    else if (input$radio == 2)
      points(mpgInput, predict(lm(disp ~ mpg, data = mtcars), newdata = data.frame(mpg = mpgInput)), col = "red", pch = 16, cex = 2)
    else
      points(mpgInput, predict(lm(wt ~ mpg, data = mtcars), newdata = data.frame(mpg = mpgInput)), col = "red", pch = 16, cex = 2)
    
    
 })
  
  output$Message2 <- renderText({
    if(input$radio == 1)
      round(predict(lm(hp ~ mpg, data = mtcars), newdata = data.frame(mpg = input$sliderMPG)), 2)
    else if (input$radio == 2)
      round(predict(lm(disp ~ mpg, data = mtcars), newdata = data.frame(mpg = input$sliderMPG)), 2)
    else
      round(predict(lm(wt ~ mpg, data = mtcars), newdata = data.frame(mpg = input$sliderMPG)), 2)
  })
  

})