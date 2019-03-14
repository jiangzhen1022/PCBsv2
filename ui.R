library(shiny) 
library(markdown)

shinyUI(navbarPage("PCBs in Fish",
                   tabPanel("Introduction",
                            uiOutput("info")
                            ),
                   navbarMenu("Does fish species and waterbody affect PCB?",
                            tabPanel("Does fish species affect PCB?",
                                     verbatimTextOutput("species_PCB"),
                                     uiOutput("info7")
                                     ),
                            tabPanel("Does waterbody affect PCB?",
                                     verbatimTextOutput("water_PCB"),
                                     uiOutput("info7")
                                     ),
                            tabPanel("Plot species & waterbody vs PCBs",
                                     plotOutput("plot1")
                            )
                            ),
                   tabPanel("Model for predicting PCB",
                            uiOutput("info2"),
                            verbatimTextOutput("fitting"),
                            uiOutput("info3")
                            ),
                   navbarMenu("Compare quantification methods",
                              tabPanel("Analysis method been used",
                                       uiOutput("info4")
                              ),
                              tabPanel("Compare quantification method HRMS vs LRMS",
                                       uiOutput("info5"),
                                       verbatimTextOutput("t1value"),
                                       uiOutput("info6")
                              ),
                              tabPanel("Compare quantification method HRMS vs LRMSMS",
                                       uiOutput("info5"),
                                       verbatimTextOutput("t2value"),
                                       uiOutput("info6")
                              )
                   )
)
)