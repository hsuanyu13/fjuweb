<?php

    // 連結資料庫
    include('connect.php');
    // $db_link = mysqli_connect($db_host,$db_username);
    header("Connect-type: text/html; charset = utf8-8");
    // $slcdb = mysqli_select_db($db_link, "fjuweb");

    // 確認是否連結資料庫成功
    // if(!$slcdb){
    //         die("失敗");
    //     }
    //     else{
    //         echo "成功";
    //     }

    // $newsid = array();
    $newstitle = array();
    $newslink = array();
    $newsdate = array();
    $newstop = array();

    $sql_query = "SELECT * FROM `news`";
    $result = $mysqli->query($sql_query);

    if (!$result) {
        die("查詢失敗：" . $mysqli->error);
    }

    $data = array();

    // 在這裡處理查詢結果
    while ($row = $result->fetch_assoc()) {
        array_push($data, $row);
    }

    // 取得news資料總筆數
    $dataRows = mysqli_num_rows($result);

    // 關閉查詢結果
    $result->close();

    // 資料按照日期排序(由晚到早)
    $sql_query2 = "SELECT * FROM `news` ORDER BY date DESC";

    $result2 = $mysqli->query($sql_query2);

    if (!$result2) {
        die("查詢失敗：" . $mysqli->error);
    }

    $data = array();

    // 在這裡處理查詢結果
    while ($row = $result2->fetch_assoc()) {
        array_push($newstitle, $row['title']);
        array_push($newslink, $row['link']);
        array_push($newsdate, $row['date']);
        array_push($newstop, $row['topnews']);
    }

    // 關閉查詢結果
    $result2->close();


    // $result2 = mysqli_query($db_link, $sql_query2);
    // foreach($result2 as $row){
    //     // array_push($newsid, $row['id']);
    //     array_push($newstitle, $row['title']);
    //     array_push($newslink, $row['link']);
    //     array_push($newsdate, $row['date']);
    //     array_push($newstop, $row['topnews']);
    // }

    // 生成title、date、link多維array
    $data = array($newstitle,$newsdate,$newslink,$newstop);

    // print_r($data);

    // 傳送data資料至js
    echo json_encode($data);

?>
