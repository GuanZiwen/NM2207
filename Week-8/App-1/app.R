library(shiny)
# Define UI ----
ui <- fluidPage(
  titlePanel(    "My Shiny App"  ),  
  sidebarLayout(
    sidebarPanel(
      img(src =            "rstudio.png"          , 
          height =            150          , 
          width =            220      )    ),
    mainPanel(
      p(        "p creates a paragraph of text."      ),
      p(        "A new p() command starts a new paragraph. Supply a style attribute to change the format."),
      strong("strong() makes bold text."),
      em("em() creates italicized (i.e, emphasized) text."),
      br(),
      code(        "code displays your text similar to computer code"),
      div("div creates segments of text with a similar style. This division of text is all blue."),
      br(),
      p( "span does the same thing as div, but it works with",
         span(            "groups of words"            , 
                          style =              "color:blue"          ),
         "that appear inside a paragraph."        ),
      a("Shiny tutorial", href = "https://shiny.posit.co/r/getstarted/shiny-basics/lesson1/")
      )
    )
  )
# Define server logic ----
server <-  function(input, output) {
}
# Run the app ----
shinyApp(ui = ui, server = server)
