<?php // 5月消息

    // 連結資料庫
    include('connect.php');
    // $db_link = mysqli_connect($db_host,$db_username);
    header("Connect-type: text/html; charset = utf8-8");
    // $slcdb = mysqli_select_db($db_link, "fjuweb"); //fjuweb為資料庫名稱

    // 確認是否連結資料庫成功
    // if(!$slcdb){
    //         die("失敗");
    //     }
    //     else{
    //         echo "成功";
    //     }

    // 取得前三筆
    $newstitle = array();
    $newslink = array();
    $newsdate = array();

    $sql_query = "SELECT * FROM `news`";
    $result = $mysqli->query($sql_query);

    if (!$result) {
        die("查詢失敗：" . $mysqli->error);
    }

    // 資料按照日期排序(由晚到早)
    $sql_query2 = "SELECT * FROM `news` ORDER BY date DESC";
    $result2 = $mysqli->query($sql_query2);

    if (!$result2) {
        die("查詢失敗：" . $mysqli->error);
    }

    //搜尋日期是5月的資料
    while ($row = $result2->fetch_assoc()) {
        if(substr($row['date'],5,-3)=="05"){
            array_push($newstitle, $row['title']);
            array_push($newslink, $row['link']);
            array_push($newsdate, $row['date']);
        }
    }

    // 取得news資料總筆數
    // $dataRows = mysqli_num_rows($result);

    // 關閉查詢結果
    $result->close();

    // 生成title、date、link多維array
    $data = array($newstitle,$newsdate,$newslink);

    // print_r($data);

    // 傳送data資料至js
    echo json_encode($data);

?>
