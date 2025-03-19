<?php
    include("connect.php");
    header("Connect-type: text/html; charset= utf-8");
    
    $slcdb=mysqli_select_db($db_link,"fjuweb");

    $sql_lastone = "SELECT `url` FROM `video_url` order by `id` desc LIMIT 0 , 1";

    $laststone_query= mysqli_query($db_link,$sql_lastone);
    $row=mysqli_fetch_array($laststone_query, MYSQLI_ASSOC);


    if($laststone_query){
        echo $row["url"];
    }

    // 確保不會回傳額外的 HTML 或錯誤訊息

?>