# install.packages("shinydashboard")
# 

# library(shinydashboard)
# 
# ui <- dashboardPage(
#   dashboardHeader(),
#   dashboardSidebar(),
#   dashboardBody()
# )
# 
# server <- function(input, output) { }
# 
# shinyApp(ui, server)

############################

checkboxInput(inputId="checkb", label="Checkbox", value = FALSE))

## app.R ##
library(shinydashboard)
 library(shiny)

ui <- dashboardPage(
  dashboardHeader(title = "Basic dashboard"),
  dashboardSidebar(),
  dashboardBody(
    # Boxes need to be put in a row (or column)
    fluidRow(
      box(plotOutput("plot1", height = 250)),
      
      box(title = "Controls", sliderInput("slider", "Number of observations:", 1, 100, 50)),
      
        box(checkboxInput(inputId="checkb", label="Rot f?rben?", value = FALSE))
      )
    )
  )


server <- function(input, output) {
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    if (input$checkb==F)
    {
    hist(data)
    }else{hist(data, col="red")}
  })
}

shinyApp(ui, server)