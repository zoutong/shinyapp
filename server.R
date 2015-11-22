bmi <- function(weight,id2,height,id4) {
  if (id2=="Kg") {weight<-weight*2.2046}
  if (id4=="CM") {height<-height*0.3937}
  weight / height^2 * 703}
shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$weight})
    output$oid2 <- renderPrint({input$id2})
    output$oid3 <- renderPrint({input$height})
    output$oid4 <- renderPrint({input$id4})
    output$prediction <- renderPrint({bmi(input$weight,input$id2,input$height,input$id4)})
  }
)