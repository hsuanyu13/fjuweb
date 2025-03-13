//全部消息隱藏按鈕
function hidden_all(){
  var myTable = document.getElementById("january"); myTable.style.display = " none " ;
  var myTable = document.getElementById("february"); myTable.style.display = " none " ;
  var myTable = document.getElementById("march"); myTable.style.display = " none " ;
  var myTable = document.getElementById("april"); myTable.style.display = " none " ;
  var myTable = document.getElementById("may"); myTable.style.display = " none " ;
  var myTable = document.getElementById("june"); myTable.style.display = " none " ;
  var myTable = document.getElementById("july"); myTable.style.display = " none " ;
  var myTable = document.getElementById("august"); myTable.style.display = " none " ;
  var myTable = document.getElementById("september"); myTable.style.display = " none " ;
  var myTable = document.getElementById("october"); myTable.style.display = " none " ;
  var myTable = document.getElementById("november"); myTable.style.display = " none " ;
  var myTable = document.getElementById("december"); myTable.style.display = " none " ;
  // 全部消息隱藏按鈕消失
  var myHiddenButton = document.getElementById("hidden"); myHiddenButton.style.display = " none " ; 
  
};


// 顯示及隱藏1~12月消息
// month_name:january、february...
function show(month_name){
  // 預設情況，1~12月全部顯示
  var myHiddenButton = document.getElementById("hidden"); myHiddenButton.style.display = " block " ;
  var myTable = document.getElementById("january"); myTable.style.display = " none " ;
  var myTable = document.getElementById("february"); myTable.style.display = " none " ;
  var myTable = document.getElementById("march"); myTable.style.display = " none " ;
  var myTable = document.getElementById("april"); myTable.style.display = " none " ;
  var myTable = document.getElementById("may"); myTable.style.display = " none " ;
  var myTable = document.getElementById("june"); myTable.style.display = " none " ;
  var myTable = document.getElementById("july"); myTable.style.display = " none " ;
  var myTable = document.getElementById("august"); myTable.style.display = " none " ;
  var myTable = document.getElementById("september"); myTable.style.display = " none " ;
  var myTable = document.getElementById("october"); myTable.style.display = " none " ;
  var myTable = document.getElementById("november"); myTable.style.display = " none " ;
  var myTable = document.getElementById("december"); myTable.style.display = " none " ;

  // 根據傳入的參數修改欲隱藏的月份
  var myTable = document.getElementById(`${month_name}`); myTable.style.display = " block " ;
};


//每個月份都會重複用到此生成html內容的函式
// month_number:1、2、3...
// month_name:january、february...
function monthnews(month_number,month_name){
  console.log("YY");
  // $.post是繼承自$.ajax再包裝後的簡化函數
  $.post({ 
      url : "./php/month.php",
      dataType: "json",
      data : { 
          "act": "postsomething",
          "month": month_number 
          }
  })
  // 完成的話
  .done(function(data){
    // 判斷這個月份資料庫有沒有資料
    if ((data[0].length) != 0){
      // console.log("這個月份有資料");
      console.log(data);


      var tableElement = document.getElementById(`${month_name}`);

      // 使用querySelectorAll()方法獲取<table>元素下的所有<tr>元素
      var trElements = tableElement.querySelectorAll('tr'); 
      
      // 檢查<tr>元素的數量是否大於0
      // 如果再按下按鈕以前table裡面已經有資料表示按過一次了
      if (trElements.length > 0) { 
        // console.log("div有資料");
      }
      else{
        var len = data[0].length; //每筆資料長度
        for (var i=1; i<=len; i++) {
          this['title'+i] = data[0][i-1]; 
          this['date'+i] = data[1][i-1];
          this['link'+i] = data[2][i-1];
          // 建立tr標籤
          this['news'+i+'_tr'] = document.createElement("tr");
          // 編輯tr標籤的id(ex:january1、january2、january3..)
          this['news'+i+'_tr'].setAttribute('id',`${month_name}${i}`);
          // 建立td標籤
          this['news'+i+'_td'] = document.createElement("td");
          // 建立title變數
          this['title'+i] = "● "+"\xa0"+this['title'+i];
          this['date'+i] = "\xa0\xa0\xa0\xa0"+this['date'+i];
          this['news'+i+'_td'].innerHTML = `<a style="text-decoration:none; color: #5877BB;" href=${this['link'+i]}">${this['title'+i]}</a>`;
          
          // 找到html中id名稱為month_name的標籤(ex:id="january")
          this['news'+i+'_div'] = document.getElementById(`${month_name}`);
          // console.log(this['news'+i+'_div']);
          //按照順序一層一層的包，td包在tr裡面
          this['news'+i+'_tr'].appendChild(this['news'+i+'_td']);
          // tr包在div裡面
          this['news'+i+'_div'].appendChild(this['news'+i+'_tr']);
          // console.log(this['news'+i+'_div']);

          this['news'+i+'_date'] = document.createTextNode(this['date'+i]);;
          this['news'+i+'_td'].appendChild(this['news'+i+'_date']);
          this['news'+i+'_div'].appendChild(this['news'+i+'_td']);
        }
      }
    }
  })
  // 失敗的話
  .fail(function(){
  })
};
