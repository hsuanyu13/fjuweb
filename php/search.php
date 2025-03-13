<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>搜尋消息</title>
<style>
    h1, h2, h3, h4{ font-family: '微軟正黑體';}
    .backPage{ /*返回上一頁*/
        font-weight:900; 
        color:#6C6F74; 
        margin-left:30%; 
        margin-top:17%;
    }
    .blueSearch{ /*藍色箭頭 搜尋消息上面*/
        margin-top:4%; 
        width:60%; 
        height:20%;
    }


    @media (max-width: 850px) { /*螢幕寬度於550-850px的時候*/
        h1, h2, h3, h4{ font-family: '微軟正黑體';}
        .backPage{ /*返回上一頁*/
            font-weight:900; 
            color:#6C6F74; 
            margin-left:23%; 
            margin-top:15%;
            /*border: solid;*/
        }
        .blueSearch{ /*藍色箭頭 搜尋消息上面*/
            margin-top:7%; 
            width:60%; 
            height:15%;
            /*border: solid;*/
        }
    }

    @media (max-width: 550px) { /*螢幕寬度於360-550px的時候*/
        h1, h2, h3, h4{ font-family: '微軟正黑體';}
        .backPage{ /*返回上一頁*/
            font-weight:900; 
            color:#6C6F74; 
            margin-left:15%; 
            margin-top:15%;
            /*border: solid;*/
        }
        .blueSearch{ /*藍色箭頭 搜尋消息上面*/
            margin-top:13%; 
            width:60%; 
            height:20%;
            /*border: solid;*/
        }
    }

</style>

<script>
function showSite(str)
{
    if (str == "")
    {
        //收集輸入字段的值，其id為“txtHint”。
        document.getElementById("txtHint").innerHTML="";
        return;
    }
    if (window.XMLHttpRequest)
    {
        // IE7+, Firefox, Chrome, Opera, Safari 瀏覽器執行碼(建立物件)
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        // IE6, IE5 瀏覽器執行碼(建立物件)
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    //'onreadystatechange'是XMLHttpRequest物件的屬性，只要'readyState'屬性發生更改，就會調用該屬性。 我們將其分配給下一個要宣告的函數。
    xmlhttp.onreadystatechange=function()
    {
        //檢查'readyState'屬性的值是否為4，以及結果代碼200表明對請求的響應是成功的。。
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            //設置要在div中顯示的字符串的值，其id為'txtHint'，作為XMLHttpRequest物件的'responseText'屬性。 'responseText'是對文本請求的響應。
            document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
        }
    }
    //此方法傳遞了三個參數。 'GET'確定httprequest的類型。 'ajax.php'設置後端文件，並設置第三個參數'true'表示異步處理請求。
    xmlhttp.open("GET", "ajax.php?title="+str, true);
    xmlhttp.send();
}
</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <link rel="icon" type="image/x-icon" href="../picture/輔大校徽/0純校徽.gif">
</head>
<body align="center">
<!--首頁路徑要改 main.html-->

<div>
  <div style="text-align:right; margin-right:2%; margin-top:2%;">
    <!-- <a href="../main.html" style="width:100px; font-weight:900; color:#6C6F74;">返回上一頁</a> -->
  </div>
  <!--藍色箭頭-->
  <img src="../picture/消息搜尋.png" class="blueSearch"> 
  <a class="backPage" href="../main.html">返回上一頁</a>
</div>
<!-- 搜尋消息底色 淺藍#6C6F74 -->
<div style="background-color:#DEEAF6; color:#6C6F74; height:75px">
  <h6 style="color:black; font-weight:600; color:#6C6F74; margin-left:11%;">搜尋消息</h6>
  <input name="title" onkeyup="showSite(this.value)" placeholder="請輸入關鍵字" style="margin-left:11%; width:75%; background-color:#DEEAF6; border: 1px solid #D3DAE2; place">
</div>
<div id="txtHint" style="background-color:#F9FFFF; color:#6C6F74;  margin-left:11%;">
  <br>
  <b style="background-color:#F9FFFF; color:#6C6F74;  margin-left:0%;">查詢結果</b>
</div>
<script src="https://code.jquery.com/jquery-3.4.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>