shinyUI(pageWithSidebar(
        headerPanel('Car analysis'),
        sidebarPanel(
                selectInput('xcol', 'X Variable', names(mtcars)),
                selectInput('ycol', 'Y Variable', names(mtcars),
                            selected=names(mtcars)[[2]]),
                numericInput('clusters', 'Cluster count', 3,
                             min = 1, max = 9)
                
        ),
        mainPanel(
                plotOutput('plot1'),
                h5("correlation between these two variables (if near 1, it means better correlation)"),
                textOutput("text1")
                  
        )
               
))