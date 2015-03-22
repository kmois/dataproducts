library(shiny)
shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("How many offspring will you have in N generations?"),
        sidebarPanel(
            numericInput('nkids', 'How many kids you and each of
                         your offspring are going to have on average:', 
                         1, min = 0, max = 10, step = 0.1),
            numericInput('gen', 'How many generations from now:', 
                         1, min = 0, max = 20, step = 1),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Results:'),
            h4('In'),
            verbatimTextOutput("inputValue1"),
            h4('generations, with average number of children of'),
            verbatimTextOutput("inputValue2"),
            h4('The number of offspring you will have is'),
            verbatimTextOutput("prediction")
        )
    )
)