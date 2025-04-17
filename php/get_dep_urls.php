<?php

header('Content-Type: application/json');

include("connect.php");

$sql = "SELECT dep, url FROM dep_url";
$result = $mysqli->query($sql);

if (!$result) {
    $error_message = array("error" => "資料庫查詢失敗: " . $mysqli->error);
    echo json_encode($error_message);
    exit; 
}

$department_urls = array();

while($row = $result->fetch_assoc()) {
    $dep_name = $row['dep'];
    $dep_url = $row['url'];
    $department_urls[$dep_name] = $dep_url;
}

// 返回系所名稱和網址的關聯陣列
echo json_encode($department_urls);
?>
