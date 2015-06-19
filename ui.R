library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Iris flower data set"),
    sidebarPanel(
      h4("The Iris flower data set or Fisher's Iris data set is a multivariate data set introduced by Sir Ronald Fisher (1936)"),
      h4("Select the Iris flower species,we will show you the average size of this kind of species."),
      
      h3("Select the flower iris"),
      radioButtons("species", "species:",
                   c("setosa" = "setosa",
                     "versicolor" = "versicolor",
                     "virginica" = "virginica"))
   
    ),
    mainPanel(
      h4("The average size of iris you selected is :"),
      verbatimTextOutput("values"),
      h4("Original iris data set:"),
      verbatimTextOutput("values1")
    )
  ))