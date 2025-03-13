goPage(1,7);
      function goPage(pno, psize) {

        var itable = document.getElementById("table_result");
        var num = itable.rows.length;//記錄表格總數
        var totalPage = 0;//總共幾頁
        var pageSize = psize;//一頁顯示幾行
        //以下是總共會有幾個分頁
        if (num / pageSize > parseInt(num / pageSize)) {  //parseInt是去小數點
            totalPage = parseInt(num / pageSize) + 1; //有剩就要多一頁
        } else {
            totalPage = parseInt(num / pageSize); //整除就不用多一頁
        }
        var currentPage = pno;//當前第幾頁
        var startRow = (currentPage - 1) * pageSize + 1;//顯示行數  1 11 21
        var endRow = currentPage * pageSize;//結束的行數   10 20 30
        endRow = (endRow > num) ? num : endRow;
        //如果超過總行數，就顯示到行數，沒有就繼續顯示endRow
		
        for (var i = 1; i < (num + 1); i++) 
		{
            var irow = itable.rows[i - 1];
            if (i >= startRow && i <= endRow) {
                irow.style.display = "block"; //將 display 均設為 block，所以成為區塊的呈現方式，強迫換行。
            } else {
                irow.style.display = "none"; //沒了就display就不要顯示 
            }
        }

		 var tempStr = ""; //存上一頁 1 2 3 4 5 下一頁
		
		var innital = currentPage; //下面的頁面 [1] 2 3 4 5 
		var after = currentPage+4 ; // 1 2 3 4 [5] *
		
		
			if  ( totalPage <= 4 ) { 
			
			 innital = 1 //如果頁面不到五頁，強迫從1開始數
			}
			

		  else if (innital+4 >= totalPage) 
			{
				innital = totalPage-5 // 不要讓初始頁面爆表 若只有7頁 選到[5] innital 一樣是[3] 4 5 6 7 
			}
		
		  if (after >= totalPage) 
			{
				after = totalPage //若 after超過總頁數一定只能讓他在總頁數 若只有7頁 選到[5] after 一樣是3 4 5 6 [7] 
			}
		
		
         if (currentPage > 1) {
            tempStr += "<a  onClick=\"goPage(" + (currentPage - 1) + "," + psize + ")\" style=\"text-decoration:none; color:#2C5597;cursor:pointer;\"><上一頁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>"
            for (var j = innital; j <= after; j++) {
                tempStr += "<a  onClick=\"goPage(" + j + "," + psize + ")\" style=\" text-decoration:none; color:#2C5597; cursor:pointer;\">" + j + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>"
            }
			 
			 //innital++;
			// after++;
			 
        } else {  //第一次進來
            tempStr += "<上一頁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
            for (var j = innital; j <= after; j++) {
                tempStr += "<a  onClick=\"goPage(" + j + "," + psize + ")\" style=\"text-decoration:none; color:#2C5597;cursor:pointer;\">" + j + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>"
            }
			 
		
			// after++;
        }
        if (currentPage < totalPage) {
            tempStr += "<a  onClick=\"goPage(" + (currentPage + 1) + "," + psize + ")\" style=\"text-decoration:none; color:#2C5597;cursor:pointer; \">下一頁>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>";
           
			// innital--;
			// after--;
        } else {
            tempStr += "  下一頁>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
           
			// innital--;
		
        }
        document.getElementById("barcon").innerHTML = tempStr;
    }