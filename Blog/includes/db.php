<?php
try{
	//dbh global variable for connection 
  $dbh = new PDO('mysql:host=localhost;dbname=examproject1', 'root', '');
}
catch(Exception $e){
  die("database error");
}

?>
