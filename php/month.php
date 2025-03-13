<?php

    // 連結資料庫
    include('connect.php');
    // $db_link = mysqli_connect($db_host,$db_username);
    header("Connect-type: text/html; charset = utf8-8");
    $slcdb = mysqli_select_db($db_link, "fjuweb"); //fjuweb為資料庫名稱

    // 確認是否連結資料庫成功
    // if(!$slcdb){
    //         die("失敗");
    //     }
    //     else{
    //         echo "成功";
    //     }

    // 取得js傳來的month變數
    if(isset($_POST["act"]) && $_POST["act"]=="postsomething") {
        $month = $_POST["month"];
    }

    $newstitle = array();
    $newslink = array();
    $newsdate = array();

    // 篩選資料庫news中，消息為$month月份的資料，並且按照日期近到遠排序
    $sql_query = "SELECT * FROM `news` WHERE DATE_FORMAT(`date`, '%m') = ? ORDER BY date DESC";
    
    $stmt = $mysqli->prepare($sql_query);

    if ($stmt === false) {
        die("參數化查詢準備失敗：" . $mysqli->error);
    }

    // 綁定參數
    $stmt->bind_param("s", $month);

    // 執行查詢
    if ($stmt->execute()) {
        // 獲取查詢結果
        $result = $stmt->get_result(); 

        while ($row = $result->fetch_assoc()) {
            $newstitle[] = $row['title'];
            $newslink[] = $row['link'];
            $newsdate[] = $row['date'];
        }

    } else {
        echo "失敗：" . $stmt->error;
    }

    // 生成title、date、link多維array
    $data = array($newstitle,$newsdate,$newslink);

    // 傳送data資料至js
    echo json_encode($data);

    // 關閉查詢
    $stmt->close();


    // 篩選資料庫news中，消息為$month月份的資料，並且按照日期近到遠排序
    // $sql_query = "SELECT * FROM `news` WHERE DATE_FORMAT(`date`, '%m') = $month ORDER BY date DESC";
    // $result = mysqli_query($db_link, $sql_query);


    // print_r($data);


?>
