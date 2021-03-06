  
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
source('carouselPanel.R')

shinyUI(
  fluidPage(theme = "styles.css",
            navbarPage("Chronic Disease",
                       tabPanel("Engine", value = "Engine",
                                fluidPage(id = "diabetes_panel",
                                          fluidRow(
                                            column(8,
                                                   wellPanel( 
                                                     plotOutput(outputId = "cost_per_patient",height = "200px"))),
                                                   column(4, 
                                                          wellPanel(
                                                                    fluidRow(
                                                                      column(6,
                                                                     selectInput('ageSelect', width = '100px', label = "Age", choices = c("20-39","40-59", "60+", "All Ages"),selected = "All Ages"),
                                                             
                                                                     selectInput('raceSelect', width = '100px', label = "Race", choices = c("Hispanic","White", "Black", "Asian","All Races"),selected = "All Races")),
                                                                      column(6,
                                                                     selectInput('genderSelect',width = '100px', label = "Gender", choices = c("Male","Female","Both Genders"),selected="Both Genders"),
                      
                                                                     selectInput('popSelect', width = '100px', label = "Pop. Estimate", choices = c("High","Base", "Low")))
                                                            )))
                                                   
                                            ),
                                            fluidRow(
                                              column(7,
                                                     wellPanel("Reduction in Average BMI")
                                              ),
                                              column(5,
                                                     wellPanel(textOutput("vis"))
                                              ))
                                          )),
                                tabPanel("New", value = "new")
                       )
  )
)
