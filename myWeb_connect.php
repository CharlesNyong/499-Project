<?php

 /*establish database connection with database information*/

 $db_username = "chugh11_499";
 $db_name = "chugh11_project499";
 $host = "localhost";
 $password = "warehouse";

 $connection = mysqli_connect($host, $db_username, $password, $db_name);


  if(mysqli_connect_errno()){
  	echo "Failed to connect: " . mysqli_connect_errno();
  }
  else{
  	//echo "Connected!";
  }

?>