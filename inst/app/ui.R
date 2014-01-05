shinyUI(pageWithSidebar(
  headerPanel(paste("Diagnostic Plots for", model.info$model.name)),
  sidebarPanel(),
  mainPanel()
))