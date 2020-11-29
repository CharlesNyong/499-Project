# 499-Project
4th year project

                                                        Datawarehouse System              
                                      
  The goal of this project was to build a warehouse querying system that stores sales and other relevant information from an online retail database for the purpose of analysis and history. The system provides a chart to help users better analyze the data in the warehouse.
  
  
                                                          Core Project Component
 There two key piece to this warehouse system
 
 - The Ecommerce site that supplies data to the warehouse. Can be found here [http://datawarehouse.myweb.cs.uwindsor.ca/manav-499/login.html] 
 - The warehouse component that archieves data for query purposes. [http://datawarehouse.myweb.cs.uwindsor.ca/499_Project/queries/wareHouseQuery.php] 
  
                                                    
                                                         Project Files
A lot of the files in this repo are administrative pages that help the ecomerce site manager fufil administrative tasks. Example, viewing cancelled orders, adding products to the site, updating products etc. Hence pages like 'deleteProduct.php', 'addProduct.php' etc.
 
 
                                                         Installation
                                                           
To see how this system works, you will need to install it locally. To install this system you will need to do the following:

- Download Appserv apache server from https://www.appserv.org/en/

- After setting up the local server, create two databases called "project_499" and "retail_warehouse" using the "phpMyAdmin" web tool       available with this server. 

- Upload the script files in the "Databases" repository to populate the database with data

- Download the files in this repository into a folder name "499_Project" (create this folder).  

- Upon successfull completion of steps 1-4, you should be able to use the link http://localhost/499_Project/queries/wareHouseLogin.php to   access the query system interface (This is where you can perform all sort of analysis on the data in the warehouse)


                                                      Technologies and Softwares
                                                           
  - HTML, CSS, Javascript, Chartjs
  - PHP, MySQL
  - phpMyAdmin
  
                                                            
                                                    Contact
    if you encounter any issues during the installation process, feel free to contact me at (asikpo@uwindsor.ca) or (2263486563). 
  
  
    
