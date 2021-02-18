<?php
	$server = "localhost";
	$username = "root";
	$password = "";
	$db = "stock";
	$conn = mysqli_connect($server, $username, $password, $db);

if(!$conn){
	die("Connection failded: ".mysqli_connect_error());
}



?>