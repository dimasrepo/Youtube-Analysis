dashboardPage(
  skin = "red",
  dashboardHeader(title = "Youtube Analysis"),
  dashboardSidebar(
    sidebarMenu(
      menuItem(text = "Dashboard", tabName = "menu_1", icon = icon("video")),
      menuItem(text = "Data", tabName = "menu_3", icon = icon("th"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(
        tabName = "menu_1",
        fluidRow(
          box(width = 12,
              selectInput(inputId = "input_cat",
                          label = "Please Choose a Category",
                          choices = unique(vids_clean$category_id),
                          selected = "Gaming")
          )
        ),
        fluidRow(
          infoBox(
            title = "Dataset",
            value = nrow(vids),
            width = 4,
            color = "red",
            icon = icon("video")
          ),
          infoBox(
            title = "Channel",
            value = length(unique(vids_clean$channel_title)),
            width = 4,
            color = "red",
            icon = icon("video")
          ),
          infoBox(
            title = "Category",
            value = length(unique(vids_clean$category_id)),
            width = 4,
            color = "red",
            icon = icon("youtube")
          )
        ),
        fluidRow(
          box(width = 12,
              plotlyOutput(outputId = "plot_1")
          )
        ),
        fluidRow(
          box(width = 6,
              plotlyOutput(outputId = "plot_2")
          ),
          box(width = 6,
              plotlyOutput(outputId = "plot_3")
          )
        )
      ),
      tabItem(
        tabName = "menu_2",
        fluidRow(
          box(width = 12,
              h3("Graphs have been moved to the Dashboard tab.")
          )
        )
      ),
      tabItem(
        tabName = "menu_3",
        fluidRow(
          box(
            width = 12,
            title = "Dataset Youtube 2023",
            dataTableOutput(outputId = "vids")
          )
        )
      )
    )
  )
)
