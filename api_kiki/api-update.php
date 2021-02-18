<?php
 
header("Content-Type: application/json");
header("Acess-Control-Allow-Origin: *");
header("Acess-Control-Allow-Methods: PUT");
header("Acess-Control-Allow-Headers: Acess-Control-Allow-Headers,Content-Type,
Acess-Control-Allow-Methods, Authorization");
 
$data = json_decode(file_get_contents("php://input"), true);
 
$pid = $data["id"];
$psondes = $data["sondes"];
$preleves = $data["releves"];
 
require_once "dbconfig.php";
 
echo $query = "UPDATE tbl_product SET product_sondes= '".$psondes."' ,
                                 product_releves= '".$preleves."'
                            WHERE product_id= '".$pid."'";
if(mysqli_query($conn, $query) or die ("Update Query Failed"))
{
 echo json_encode(array("message" => "Product Update Succesfully", "status" => true));
}
else
{
 echo json_encode(array("message" => "Product Update Succesfully", "status" => true));
}
 
?>