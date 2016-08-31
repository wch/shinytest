
widget_set_value <- function(self, private, value) {
  widget_set_value_list[[private$type]](self, private, value)
  invisible(self)
}

## Can't really set a value I am afraid, but we can click...
widget_set_value_actionButton <- function(self, private, value) {
  private$element$click()
}

widget_set_value_checkboxInput <- function(self, private, value) {
  ## TODO
}

widget_set_value_checkboxGroupInput <- function(self, private, value) {
  ## TODO
}

widget_set_value_dateInput <- function(self, private, value) {
  ## TODO
}

widget_set_value_dateRangeInput <- function(self, private, value) {
  ## TODO
}

widget_set_value_fileInput <- function(self, private, value) {
  ## TODO
}

widget_set_value_numericInput <- function(self, private, value) {
  private$element$clear()$send_keys(as.character(value))
}

widget_set_value_radioButtons <- function(self, private, value) {
  ## TODO
}

widget_set_value_selectInput <- function(self, private, value) {
  private$element$execute_script(
    "var el = arguments[0];
     var value = arguments[1];
     var selectize = $(el)[0].selectize;
     if (!selectize ) {
       $(el).val(value);
     } else {
       selectize.setValue(value)
     }",
    value
  )
}

widget_set_value_sliderInput <- function(self, private, value) {
  ## TODO
}

widget_set_value_textInput <- function(self, private, value) {
  ## TODO
}

widget_set_value_passwordInput <- function(self, private, value) {
  ## TODO
}

widget_set_value_htmlOutput <- function(self, private, value) {
  ## TODO
}

widget_set_value_plotOutput <- function(self, private, value) {
  ## TODO
}

widget_set_value_tableOutput <- function(self, private, value) {
  ## TODO
}

widget_set_value_verbatimTextOutput <- function(self, private, value) {
  ## TODO
}

widget_set_value_textOutput <- function(self, private, value) {
  ## TODO
}

widget_set_value_list = list(
  "actionButton"  = widget_set_value_actionButton,
  "checkboxInput" = widget_set_value_checkboxInput,
  "checkboxGroupInput" = widget_set_value_checkboxGroupInput,
  "dateInput" = widget_set_value_dateInput,
  "dateRangeInput" = widget_set_value_dateRangeInput,
  "fileInput" = widget_set_value_fileInput,
  "numericInput" = widget_set_value_numericInput,
  "radioButtons" = widget_set_value_radioButtons,
  "selectInput" = widget_set_value_selectInput,
  "sliderInput" = widget_set_value_sliderInput,
  "textInput" = widget_set_value_textInput,
  "passwordInput" = widget_set_value_passwordInput,

  "htmlOutput" = widget_set_value_htmlOutput,
  "plotOutput" = widget_set_value_plotOutput,
  "tableOutput" = widget_set_value_tableOutput,
  "verbatimTextOutput" = widget_set_value_verbatimTextOutput,
  "textOutput" = widget_set_value_textOutput
)