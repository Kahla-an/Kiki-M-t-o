<?php
	$server = "localhost";
	$username = "test";
	$password = "mot_de_passe";
	$db = "Kiki_meteo";
	$conn = mysqli_connect($server, $username, $password, $db);

if(!$conn)
{
	die("Connection failded: ".mysqli_connect_error());
}

?>