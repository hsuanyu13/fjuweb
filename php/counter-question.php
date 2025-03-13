<?php
	// 根據people.txt預設人數，每重整一次，次數就會累加一次
	$file=fopen("people-question.txt","r"); 
	// 讀取數值
	$num=fgets($file);
	// 關閉檔案
	fclose($file);
	// 每開啟一次加一次
	$num++;
	$file=fopen("people-question.txt","w"); 
	// 加一次後的數值覆寫原本的數值
	fwrite($file,$num); 
	fclose($file);
	// 回傳新數值
	echo "document.write('" . $num . "');"
?>
