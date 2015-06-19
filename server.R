library(shiny)

disPlay <- function(x) {
  temp <- aggregate(. ~ Species,iris,mean)
  out <- temp[which(temp$Species == x),]
  return (out)
}


shinyServer(
  function(input, output) {
    output$values <- renderPrint(disPlay(input$species))
    output$values1 <- renderPrint(iris)
  }
)