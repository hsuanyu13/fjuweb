<?php
include("connect.php");
// 從資料庫獲取修改記錄
$sql = "SELECT
 uc.id,uc.user_id,uc.old_url,uc.new_url,uc.change_time,d.dep
 FROM url_changes uc
 LEFT JOIN dep_url d ON uc.dep_id = d.id
 ORDER BY uc.change_time DESC";
$result = $mysqli->query($sql);
$records = [];
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $records[] = $row;
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/x-icon" href="../picture/輔大校徽/0純校徽.gif">
    <title>修改記錄 | 輔大校系網站管理</title>
    <style type="text/css">
        .up_div h1{  
            align:"left";
            margin-left:12%;
        }
        .form-container {
            margin-top:2%;
            width: 77.7%;
            margin-left: auto;
            margin-right: auto;
        }
        .current-url {
            margin: 15px 0;
            padding: 10px;
            background-color: white;
            border-radius: 4px;
            border: 1.5px solid #C7CDCD;
        }
        .line{
            background-color:#B3C5ED; 
            width:77.7%; 
            height:10%; 
            margin-left:11.2%; 
            margin-top:-1%; 
            color:#B3C5ED;
        }
        #changes-table {
            width: 77.7%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: white;
        }
        #changes-table th, #changes-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        #changes-table th {
            background-color: #B3C5ED;
            color: white;
            font-weight: bold;
        }
        #changes-table tr:nth-child(even) {
            background-color: #f2f9ff;
        }
        #changes-table tr:hover {
            background-color: #e6f2ff;
        }
        .url-cell {
            max-width: 200px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .url-cell a {
            color: #4682B4;
            text-decoration: none;
        }
        .url-cell a:hover {
            text-decoration: underline;
        }
        .loading {
            text-align: center;
            margin-top: 50px;
        }
        .spinner {
            border: 4px solid #f3f3f3;
            border-top: 4px solid #B3C5ED;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            animation: spin 2s linear infinite;
            margin: 0 auto;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        .no-records {
            width: 77.7%;
            margin: 50px auto;
            text-align: center;
            font-size: 16px;
            color: #666;
        }

        @media (max-width: 1000px){
            .up_div h1{
                font-size: 200%;
            }
            .form-container, #changes-table, .no-records {
                width: 90%;
            }
        }

        @media (max-width: 470px){
            .up_div h1{
                font-size: 175%;
            }
            .form-container, #changes-table, .no-records {
                width: 95%;
            }
        }
    </style>
</head>
<body style="background-color:#F9FFFF; font-family: Microsoft JhengHei;">
    <div id="back">
        <a style="font-family:微軟正黑體;color:#7B7B7B; text-decoration:none; font-weight: 600;" href="manager_url.php">返回 Back</a>
    </div>
    <div class="up_div">
        <h1 style="display: inline-block;">修改紀錄</h1>
    </div>
       
    <div class="line">11</div>
    
    <?php if (empty($records)): ?>
        <div class="no-records">
            目前沒有修改記錄
        </div>
    <?php else: ?>
        <table id="changes-table">
            <thead>
                <tr>
                    <th>編號</th>
                    <th>原網址</th>
                    <th>新網址</th>
                    <th>修改者</th>
                    <th>修改時間</th>
                    <th>系所名稱</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($records as $index => $record): ?>
                    <tr>
                        <td><?= $index + 1 ?></td>
                        <td class="url-cell" title="<?= htmlspecialchars($record['old_url']) ?>">
                            <a href="<?= htmlspecialchars($record['old_url']) ?>" target="_blank">
                                <?= htmlspecialchars($record['old_url']) ?>
                            </a>
                        </td>
                        <td class="url-cell" title="<?= htmlspecialchars($record['new_url']) ?>">
                            <a href="<?= htmlspecialchars($record['new_url']) ?>" target="_blank">
                                <?= htmlspecialchars($record['new_url']) ?>
                            </a>
                        </td>
                        <td><?= htmlspecialchars($record['user_id'] ?? '系統') ?></td>
                        <td><?= htmlspecialchars($record['change_time']) ?></td>
                        <td><?= htmlspecialchars($record['dep']) ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>

    <script>
        // 移除原本的 AJAX 請求，改用 PHP 直接渲染
        document.addEventListener('DOMContentLoaded', function() {
            // 隱藏載入動畫（如果有的話）
            const loadingElement = document.getElementById('loading');
            if (loadingElement) {
                loadingElement.style.display = 'none';
            }
            
            // 顯示表格（如果有的話）
            const tableElement = document.getElementById('changes-table');
            if (tableElement) {
                tableElement.style.display = 'table';
            }
        });
    </script>
    <?php
// 處理 AJAX POST 請求並儲存 URL
if (isset($_POST['urlValue'])) {
    include("managerSQL.php");

    // 從 POST 請求獲取 URL
    $urlValue = $_POST['urlValue'];

    // 更新資料庫中的影片網址
    $sql = "UPDATE video_url SET url = ?, modify_time = NOW(), modifier_id = ? WHERE id = ?";

    $stmt = $mysqli->prepare($sql);
    $modifier_id = $_SESSION['member_id'];  // 使用 session 中的 member_id
    $video_id = 1;  

    $stmt->bind_param("sii", $urlValue, $modifier_id, $video_id);

    if ($stmt->execute()) {
        echo "成功";
    } else {
        echo "更新失敗：" . $stmt->error;
    }

    $stmt->close();
}
?>

</body>
</html>