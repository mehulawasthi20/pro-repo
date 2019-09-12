#Reference-
#https://shiny.rstudio.com/gallery/image-output.html
library(shiny)
library(png) # For writePNG function



function(input, output, session) {
  
 
  
  # image2 sends pre-rendered images
  output$image2 <- renderImage({
    if (is.null(input$picture))
      return(NULL)
    if (input$picture == "CDC heatmap") {
      return(list(
        src = "CDC heatmap.png",
        contentType = "image/png",
        alt = "Face"
      ))
    }
    else if (input$picture == "Tweets per state") {
      return(list(
        src = "Tweets per state.png",
        filetype = "image/png",
        alt = "This is a chainring"
      ))
    }
    
  }, deleteFile = FALSE)
}