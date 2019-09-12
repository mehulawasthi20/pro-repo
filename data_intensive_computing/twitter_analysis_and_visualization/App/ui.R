library(shiny)

fluidPage(
  titlePanel("Image output"),
  
  fluidRow(
    column(4, wellPanel(
      
      radioButtons("picture", "Picture:",
                   c("CDC heatmap","Tweets per state"))
    )),
    column(4,imageOutput("image2")
    )
  )
)
