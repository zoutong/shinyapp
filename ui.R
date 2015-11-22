shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index"),
    sidebarPanel(
      numericInput('weight', 'Weight', 160, min = 80, max = 400, step = 5),
      checkboxGroupInput("id2", "Checkbox",
                         c("Pound" = "Pound",
                           "Kg" = "Kg")
                           ),
      numericInput('height', 'Height', 70, min = 50, max = 90, step = 1),
      checkboxGroupInput("id4", "Checkbox",
                         c("Inch" = "Inch",
                           "CM" = "CM")),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('The Weight You Entered Was'),
      verbatimTextOutput("oid1"),verbatimTextOutput("oid2"),
      h4('The Height You Entered Was'),
      verbatimTextOutput("oid3"),verbatimTextOutput("oid4"),
      h4('Which resulted in a BMI of '),
      verbatimTextOutput("prediction")
    )
  )
)