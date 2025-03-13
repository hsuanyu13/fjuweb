<?php
	// 根據people.txt預設人數，每重整一次，次數就會累加一次
	$file=fopen("people-question.txt","r");
	$num=fgets($file);
	// 讀取數值 英文版數值不會加一次 因為是從中文版切換過來 中文版加過了
	// 關閉檔案
	fclose($file);
	// 回傳新數值
	echo "document.write('" . $num . "');"
?>