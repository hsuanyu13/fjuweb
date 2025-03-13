<?php
  include('connect.php');

  //接收從前端傳來的內容，撈取資料後透過ajax丟回前端
  if($_GET['title'] != "") {
    @$n = $_GET['title'];
    /*從news資料表，撈取所有欄位(用*米字號)，當所傳來的值是字首、中、尾有符合(LIKE)資料title欄位的名字，
      就會呼叫出來，並且透過id欄位來設定為升序(ASC是升序(小跑到大)、DESC是降序(大跑到小))*/

    $sql_query = "SELECT * FROM news WHERE title LIKE '%$n%' ORDER BY id DESC";
    
    $stmt = $mysqli->query($sql_query);
  }
  echo "<table border='1' style='width:85%'>
        查詢結果
        <tr>
          <th>消息</th>
          <th>日期</th>
        </tr>";

  // $result = mysqli_query($kt_conn,$sql);
  $result = $mysqli->query($sql_query);

  // 在這裡處理查詢結果
  while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    //echo "<td>" . $row['id'] . "</td>";
    echo "<td><a href=" . $row['link'] . ">" . $row['title'] . "</a></td>";
    echo "<td>" . $row['date'] . "</td>";
    echo "</tr>";
  }
  echo "</table>";

  // while($row = mysqli_fetch_array($news_result)){
  //     echo "<tr>";
  //     //echo "<td>" . $row['id'] . "</td>";
  //     echo "<td><a href=" . $row['link'] . ">" . $row['title'] . "</a></td>";
  //     echo "<td>" . $row['date'] . "</td>";
  //     echo "</tr>";
  // }
  // echo "</table>";

  //關閉資料庫
  // mysqli_close($kt_conn);
?>