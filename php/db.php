<!DOCTYPE html>
<html>
<head>
    <title>执行 MySQL 语句</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h2>执行 MySQL 语句</h2>
    <form method="post">
        <label for="query">输入 MySQL 语句:</label><br>
        <textarea id="query" name="query" rows="4" cols="50"></textarea><br><br>
        <input type="submit" value="执行">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $servername = "localhost";  // 数据库服务器地址
        $username = "root";     // 数据库用户名
        $password = "Doourbest@2024";     // 数据库密码
        $dbname = "fjuweb";       // 数据库名称

        // 创建连接
        $conn = new mysqli($servername, $username, $password, $dbname);

        // 检查连接
        if ($conn->connect_error) {
            die("连接失败: " . $conn->connect_error);
        }

        // 获取并执行查询
        $query = $_POST['query'];
        if ($result = $conn->query($query)) {
            // 如果查询是 SELECT 或类似的命令（如 SHOW），显示结果
            if ($result instanceof mysqli_result) {
                echo "<h3>查询结果:</h3>";
                echo "<table><tr>";
                // 显示表头
                while ($field = $result->fetch_field()) {
                    echo "<th>{$field->name}</th>";
                }
                echo "</tr>";
                // 显示数据
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    foreach ($row as $data) {
                        echo "<td>" . htmlspecialchars($data) . "</td>";
                    }
                    echo "</tr>";
                }
                echo "</table>";
                $result->free();
            } else {
                // 如果查询是非 SELECT 语句，显示受影响的行数
                echo "查询执行成功。受影响的行数: " . $conn->affected_rows;
            }
        } else {
            echo "查询执行失败: " . $conn->error;
        }

        // 关闭连接
        $conn->close();
    }
    ?>
</body>
</html>
