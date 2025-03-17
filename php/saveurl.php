<?php  
    include("managerSQL.php");
    header("Connect-Type: text/html; charset= utf-8");
    
    $slcdb=mysqli_select_db($db_link,"fjuweb");
    
    $url = $_POST["urlValue"];
    $sql_query="INSERT INTO `video_url`(`url`) VALUES ('".$url."')";

    $result=mysqli_query($db_link,$sql_query);


 ?>