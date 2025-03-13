/*最新消息*/
function morenews(){
  // 從news.php取得mysql資料庫的變數
  $.getJSON("./php/news.php",function(data){
     //console.log(data);

    for (var i=1; i<=3; i++) {
      this['title'+i] = data[0][i-1];
      this['date'+i] = data[1][i-1];
      this['link'+i] = data[2][i-1];
      this['news'+i+'_td'] = document.createElement("td");
      this['title'+i] = "● "+"\xa0"+this['title'+i];
      this['date'+i] = "\xa0\xa0\xa0\xa0"+this['date'+i];
      this['news'+i+'_td'].innerHTML = `<a style="text-decoration:none; color: #5877BB;" href='${this['link'+i]}'">${this['title'+i]}</a>`;
      
      this['news'+i+'_div'] = document.getElementById(`morenews${i}`);
      this['news'+i+'_div'].appendChild(this['news'+i+'_td']);

      this['news'+i+'_date'] = document.createTextNode(this['date'+i]);;
      this['news'+i+'_td'].setAttribute('style','color: #5877BB;');
      this['news'+i+'_td'].appendChild(this['news'+i+'_date']);
      this['news'+i+'_div'].appendChild(this['news'+i+'_td']);
    }
  })
};