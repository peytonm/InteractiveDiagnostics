shinyUI(pageWithSidebar(
  headerPanel(paste("Diagnostic Plots for", model.info$model.name)),
  sidebarPanel(
    selectInput("diagnostic", "Diagnostic",
                names(InteractiveDiagnostics:::.DIAGNOSTICS))
  ),
  mainPanel(
    tags$head(
      tags$script(src="http://d3js.org/d3.v3.min.js", charset="utf-8"),
      tags$script(src="plotting.js"),
      tags$link(rel="stylesheet", type="text/css", href="style.css")
    ),
    div(id="plot")
  )
))