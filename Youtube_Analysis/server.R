
shinyServer(function(input, output) {
    output$plot_1 <-  renderPlotly({
        vids_count <- 
      vids_clean %>% 
      group_by(category_id) %>% 
      summarize(Frekuensi = n()) %>% 
      arrange(-Frekuensi) %>% 
      mutate(label = glue("Category: {category_id}
                      Freq: {Frekuensi}"))
        plot1 <- 
      ggplot(data = vids_count, mapping = aes(x = Frekuensi, 
                                              y = reorder(category_id, Frekuensi), 
                                              fill = Frekuensi,
                                              text = label))+ 
      geom_col() +
      scale_fill_gradient(low = "red",
                          high = "black") +
      labs(title = "Top YouTube Category by Count",
           x = "Total Count", 
           y = NULL) +
      theme_light() +
      theme(legend.position = "none") 
    ggplotly(plot1, 
             tooltip = "text")
  })
  
  output$plot_2 <- renderPlotly({
    vids_gaming <- 
      vids_clean %>% 
      filter(category_id %in% input$input_cat) %>% 
      group_by(channel_title) %>% 
      summarise(total_views = sum(views)) %>% 
      arrange(-total_views) %>% 
      head(10) %>% 
      mutate(label = glue("Channel Title: {channel_title} 
                      Total Views: {comma(total_views)}"))
    plot2 <- 
      ggplot(data = vids_gaming, mapping = aes(x = total_views, 
                                               y = reorder(channel_title, total_views),
                                               fill = total_views,
                                               text = label)) +
      geom_col() +
      scale_fill_gradient(low = "red",
                          high = "black") +
      scale_x_continuous(labels = comma)+
      labs(title = glue("Top 10 Videos ", input$input_cat, " Categories" ),
           x = "Total Views",
           y = "") + 
      theme_minimal() +
      theme(legend.position = "none",
            text = element_text(size = 6))
    ggplotly(plot2, tooltip = 'text')
    
  })
  
  output$plot_3 <- renderPlotly({
    vids_trending_hour <- 
      vids_clean %>% 
      filter(category_id %in% input$input_cat) %>% 
      group_by(publish_hour) %>% 
      summarise(avg_views = mean(views)) %>% 
      mutate(label = glue("Publish Hour: {publish_hour}
                      Average Views: {comma(avg_views)}"))
    plot3 <- 
      ggplot(data = vids_trending_hour, mapping = aes(x = publish_hour, 
                                                      y = avg_views)) +
      geom_line(col = "red") +
      geom_point(mapping = aes(text = label)) + 
      scale_y_continuous(label = comma)+ 
      labs(title = glue("Average Views For ", input$input_cat ," Category Based On Publish Hour"),
           x = "Publish Hour",
           y = NULL) +
      theme_minimal()
    ggplotly(plot3, tooltip = 'text')
    
  })
  


output$vids <- renderDataTable(
  vids,
  options = list(scrollx = T,
                 sccrolly = T))

})