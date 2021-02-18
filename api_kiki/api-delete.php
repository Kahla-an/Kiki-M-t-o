<?php

header("Content-Type: application/json");
header("Acess-Control-Allow-Origin: *");
header("Acess-Control-Allow-Methods: DELETE");
header("Acess-Control-Allow-Headers: Acess-Control-Allow-Headers,Content-Type,
Acess-Control-Allow-Methods, Authorization");

$data = json_decode(file_get_contents("php://input"), true);

$pid = $data["id"];

require_once "dbconfig.php";

echo $query = "DELETE FROM tbl_product WHERE product_id='".$pif."'";

if(mysqli_query($conn, $query) or die ("Delete Query Failed"))
{
    echo json_encode(array("message" => "Product Delete Succesfully", "status" => true));
}
else
{
    echo json_encode(array("message" => "Failed Product Not Deleted", "status" => false));
}

?>
