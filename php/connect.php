<?php

// 連結資料庫
$db_host = "localhost";
$db_username = "root";
$db_password = "";
$db_name = "fjuweb";

$mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);

if ($mysqli->connect_error) {
    die("連接失敗：" . $mysqli->connect_error);
}

$mysqli->set_charset("utf8");

?>