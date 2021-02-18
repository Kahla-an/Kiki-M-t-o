<?php

header("Content-Type: application/json");
header("Acess-Control-Allow-Origin: *");

$data = json_decode(file_get_contents("php://input"), true);

$psearch = $data["search"];

require_once "dbconfig.php";

<<<<<<< HEAD
echo $query = 'SELECT * FROM releves WHERE id_releve = '".$preleves."'';
=======
echo $query = "Select * FROM tbl_product WHERE product_sondes AND product_releves LIKE '%".$psearch."%'";
>>>>>>> main

$result = mysqli_query($conn, $query) or die ("Search Query Failed");

$count = mysqli_num_rows($result);

if($count > 0)
{
    $row = mysqli_fetch_all($result, MYSQL_ASSOC);


    echo json_encode($row);
}
else
{
    echo json_encode(array("message" => "No Search Found.", "status" => false));
}

?>
