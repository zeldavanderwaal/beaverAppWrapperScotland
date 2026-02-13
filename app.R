# This is a Shiny web application to run the real package (beaverApp) from GitHub, along with custom regional data (also on gitHub)

#  the demo data backend 
options(beaverApp.data.pkg = "beaverAppDataScotland")   #  data package for this deployment 
Sys.setenv(BEAVERAPP_DATA_PKG = "beaverAppDataScotland", 
           APP_MODE="normal",    
           BEAVERAPP_VERBOSE =FALSE,
           APP_REGION="Scotland")
           # BEAVERAPP_PASSWORD= "XXX" 
 
app_password <- Sys.getenv("BEAVERAPP_PASSWORD") 
 
options(shiny.maxRequestSize = 7200 * 1024^2)  # just in case, 7200MB uploads
if (!is.na(Sys.getenv("SHINY_PORT", unset = NA))) {
  future::plan("sequential")
}

cat("\n>>> launching beaverApp from Scotland wrapper >>>\n")
    
beaverApp::launch_app(run = FALSE)   

