<?php

$DBhost = "localhost";
$DBuser = "user";
$DBpassword = "mot_de_passe";
$Dbname = "Kiki_meteo";

$conn = mysqli_connect($DBhost, $DBuser, $DBpassword, $Dbname);

if(!conn){
    die("Connection failed: " . mysqli_connect_error());
}

?>