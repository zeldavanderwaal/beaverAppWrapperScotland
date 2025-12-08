# This is a Shiny web application to run the real package (beaverApp) from GitHub.

#  the demo data backend 
options(beaverApp.data.pkg = "beaverAppDataScotland")   #  data package for this deployment 
Sys.setenv(BEAVERAPP_DATA_PKG = "beaverAppDataScotland", APP_MODE="Scotland") 
 
 
options(shiny.maxRequestSize = 850 * 1024^2)  # just in case, 850MB uploads
if (!is.na(Sys.getenv("SHINY_PORT", unset = NA))) {
  future::plan("sequential")
}

cat("\n>>> launching beaverApp from wrapper (Scotland) >>>\n")
   
#library(beaverApp) 
beaverApp::launch_app(run = FALSE)  
# return a shiny.appobj for shinyapps.io to run.
# For shinyapps.io, the last expression in app.R must evaluate to the app object. 
   


