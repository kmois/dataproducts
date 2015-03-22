noffspring <- function(nkids,gen) round(nkids^gen)

shinyServer(
    function(input, output) {
        output$inputValue1 <- renderPrint({input$nkids})
        output$inputValue2 <- renderPrint({input$gen})
        output$prediction <- renderPrint({noffspring(input$nkids,input$gen)})
    }
)