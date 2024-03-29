# UI function

#UI##########
ui <- function(){
  shinymaterial::material_page(
  font_color = "green",
  primary_theme_color = "darkgreen",
  secondary_theme_color = "darkgreen",
  shinyjs::useShinyjs(),
  title = shiny::tags$img(src="logo/metRscreen.png", height = 65),
  shinyWidgets::actionBttn(
    inputId = "help",
    label = "Help",
    style = "fill",
    color = "danger"),
  br(),
  # Sidebar
  shinymaterial::material_row(
    shinymaterial::material_column(
      width = 4,
      shinymaterial::material_card(
        depth = 2,
        shinyWidgets::awesomeCheckbox(
          inputId = "hide_name",
          label = "Hide author names and journal?",
          value = F,
          status = "info"
        ),
        shinymaterial::material_file_input("Ref", label = "Import a .csv"),
        shiny::tags$h6(shiny::htmlOutput("progress"))),
      shinymaterial::material_card(
        depth = 2,
        shinymaterial::material_text_box("search1", "Green Keyword:", value = "", color = "green"),
        shinymaterial::material_text_box("search2","Red Keyword:", value =  "", color = "red"),
        shinymaterial::material_text_box("search3", "Purple Keyword:", value =  "", color = "purple"),
        shinymaterial::material_text_box("search4", "Orange Keyword:", value =  "", color = "orange"),
        shinymaterial::material_text_box("search5", "Blue Keyword:", value =  "", color = "blue"),
      ),
      shinymaterial::material_card(
        width = 2,
        depth = 2,
        shinyWidgets::actionBttn(
          inputId = "Next",
          label = "Next Study",
          style = "fill",
          color = "success",
          block = T,
          size = "sm"),
        shinyWidgets::actionBttn(
          inputId = "Previous",
          label = "Previous Study",
          style = "fill",
          color = "royal",
          block = T,
          size = "sm")),
      shiny::textOutput("info"),
      shiny::textInput("Study", "study", value = 1)
    ),

    #main panel
    shinymaterial::material_column(
      width = 8,
      shinymaterial::material_card(
        depth = 2,
        shiny::splitLayout(
          shinyWidgets::actionBttn(
            inputId = "Accept",
            label = "Accept",
            style = "fill",
            color = "success",
            block = T,
            size = "sm"),
          shinyWidgets::actionBttn(
            inputId = "NoDecision",
            label = "No Decision",
            style = "fill",
            color = "primary",
            block = T,
            size = "sm"),
          shinyWidgets::actionBttn(
            inputId = "Reject",
            label = "Reject",
            style = "fill",
            color = "warning",
            block = T,
            size = "sm"))),
      shinymaterial::material_card(
        depth = 2,
        shiny::tags$h6(shiny::htmlOutput("overview")),
        shiny::tags$h6(shiny::br(), shiny::htmlOutput("abstract")),
        shiny::tags$h6(shiny::br(), shiny::htmlOutput("keyword")))
    )
  )
)
}
