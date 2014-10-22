library(shiny)
library(UsingR)
data(diamond)

shinyServer(
  function(input, output) {
    output$op1<-renderPrint(
      
      {
        fit<-lm(price~carat,data=diamond)
        predict(fit,newdata=data.frame(carat=input$cr))
       
       })
    output$op2<-renderPlot(
      {
        plot(diamond$carat,diamond$price,xlab="size of carat",ylab="Price",col="red")
        lines(diamond$carat,fit$fitted.values,col="blue")
      })
    
  }
)