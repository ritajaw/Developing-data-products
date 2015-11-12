

library(shiny)


source('./helper.R')

shinyServer(

function(input,output){
  
  output$disPlot<-renderPlot({
    
    Gender<-input$Gender
    Year<-input$Year
    
    
    output$Gender<-renderPrint(Gender)
    output$Year<-renderPrint(Year)
    
    
    
    
   
    Process(Gender,Year)

   
       })
  

})
