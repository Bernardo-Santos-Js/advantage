
*** Settings ***

### BuiltIn libraries ####
Library         String
Library         Collections
Library         OperatingSystem
Library         DateTime
Library         Process
   
### External Librarys ###
Library         SeleniumLibrary    run_on_failure=NOTHING    
Library         RequestsLibrary
#Library         FakerLibrary    locale=pt_BR
Library         FlaUILibrary    
    
### Data ###
Resource        ./data/keywords/consulta/consultaProduto.resource

### Page Objects ###
Resource        ./pageObjects/produto/consultaProduto.resource

### Keywords ###
Resource        ./data/keywords/consulta/consulta.robot
Resource        ./data/keywords/utils.robot
Resource        ./data/keywords/pdGeneral.robot

