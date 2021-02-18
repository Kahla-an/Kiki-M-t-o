<?php

header("Content-Type: application/json");
header("Acess-Control-Allow-Origin: *");

require_once "db_connect.php";

$query = "SELECT * FROM releves";

$result = mysql_query($conn, $query) or die("Select Query Failed.");
$count = mysql_num_rows($result);

if($count > 0){
    $row = mysql_fetch_all($result, MYSQL_ASSOC);

echo json_encode($row);
}
else {
    echo json_encode(array("message" => "No Product Found.", "Status" => false));
}

?>