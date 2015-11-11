library(shiny)


shinyUI(fluidPage(
  
  
  headerPanel("2004 to 2014 Top 10 Baby Name"),
  
sidebarLayout(
  sidebarPanel(
    h3("Please select the baby gender and year"),
    
    selectInput(inputId = "Gender",
                label="Gender:",
                choices=c("Boy"="Boy",
                          "Girl"="Girl")
                ),
                
    
   selectInput(inputId="Year",
                label="Year:",
                choices=c("2004"="2004",
                          "2005"="2005",
                          "2006"="2006",
                          "2007"="2007",
                          "2008"="2008",
                          "2009"="2009",
                          "2010"="2010",
                          "2011"="2011",
                          "2012"="2012",
                          "2013"="2013",
                          "2014"="2014")
               ),
               
    
    

    submitButton("Submit")
    
    ),
  mainPanel(
    
    
    plotOutput("disPlot"))
   
  )
  
 
  
  ))