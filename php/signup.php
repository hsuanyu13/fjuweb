<?php session_start(); ?>
        <!--上方語法為啟用session，此語法要放在網頁最前方-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
        //連接資料庫
        //只要此頁面上有用到連接MySQL就要include它
        include("connect.php");
        $slcdb=mysqli_select_db($db_link,"fjuweb");
        $username = $_POST['username1'];
        $email = $_POST['email1'];
        $password = $_POST['password1'];
        $checkpassword = $_POST['checkpassword1'];

        //搜尋會員資料
        $sql = "SELECT * FROM member_table where username = '$username'";
        $result = mysqli_query($db_link, $sql);
        $row = @mysqli_fetch_row($result);
        // echo($username);
        // echo($row[1]);

        // print_r($row);

        //搜尋暫存會員的信箱資料
        $sql2 = "SELECT * FROM member_table where email = '$email'";
        $result2 = mysqli_query($db_link, $sql2);
        $row2 = @mysqli_fetch_row($result2);


        //如果欄位為空值
        if ($username == null || $password == null || $checkpassword == null || $email == null) {
                echo "<script>alert('欄位不得為空值，請再檢查!')</script>";
                echo '<meta http-equiv=REFRESH CONTENT=0;url=../../招生入口網站/signup.html>';
        }
        //如果欄位不為空值
        else{
                //如果密碼和確認密碼相同
                if($password == $checkpassword){
                        //如果帳號與他人重複
                        if($row[1] == $username){
                                echo "<script>alert('帳號與他人重複，請重新註冊!')</script>";
                                echo '<meta http-equiv=REFRESH CONTENT=50;url=../../招生入口網站/signup.html>';
                        }
                        //如果信箱重複註冊
                        else if ($row2[3] == $email) {
                                echo "<script>alert('相同信箱不得重複註冊，請重新註冊!')</script>";
                                echo '<meta http-equiv=REFRESH CONTENT=0;url=../../招生入口網站/signup.html>';
                        }
                        //註冊成功
                        else{
                                echo "<script>alert('註冊成功!')</script>";
                                echo '<meta http-equiv=REFRESH CONTENT=0;url=../../招生入口網站/register.html>';
                                //把註冊資料新增至資料庫
                                $sql_query = "INSERT INTO member_table (username, password, email) VALUES ('$username','$password','$email')";
                                mysqli_query($db_link, $sql_query);
                        }
                }
                //如果密碼和確認密碼不同
                else{
                        echo "<script>alert('密碼輸入不一致!')</script>";
                        echo '<meta http-equiv=REFRESH CONTENT=0;url=../../招生入口網站/signup.html>';
                }   
        }
?>