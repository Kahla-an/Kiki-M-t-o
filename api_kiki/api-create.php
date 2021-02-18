<?php

header("Content-Type: application/json");
header("Acess-Control-Allow-Origin: *");
header("Acess-Control-Allow-Methods: POST");
header("Acess-Control-Allow-Headers: Acess-Control-Allow-Headers,Content-Type,Acess-Control-Allow-Methods, Authorization");


$data = json_decode(file_get_contents("php://input"), true);

$pname = $data["name"]; //Mettre chaque champ de la bdd

require_once "db_connect.php";

$query = "";

if(mysqli_query($conn, $query) or die("Insert Query Failed")){
    echo json_encode(array("message"=> "Product Inserted Successfully", "status" => true));
} else {
    echo json_encode(array("message"=> "Failed", "status" => false));
}



?>
