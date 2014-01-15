shinyServer(function(input, output, session) {
  observe({
    diagnostic.fun <- InteractiveDiagnostics:::.DIAGNOSTICS[[input$diagnostic]]
    session$sendCustomMessage(
      type="renderDiagnosticPlot",
      message=diagnostic.fun(model.info$model)
    )
  })
})