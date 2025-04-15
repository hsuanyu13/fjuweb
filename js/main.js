document.getElementById('btn-modal').addEventListener('click', function() {
  document.getElementById('overlay').classList.add('is-visible');
  document.getElementById('modal').classList.add('is-visible');
});

document.getElementById('close-btn').addEventListener('click', function() {
  document.getElementById('overlay').classList.remove('is-visible');
  document.getElementById('modal').classList.remove('is-visible');
});
document.getElementById('overlay').addEventListener('click', function() {
  document.getElementById('overlay').classList.remove('is-visible');
  document.getElementById('modal').classList.remove('is-visible');
});

window.onload=function(){
  getUrl();
  history();
  history_english();
  swiper();
  morenews();
  page();
}


function getUrl() {
  $.ajax({
    type: "POST",
    url: "php/get_video.php",
    data: {
      "urlValue": ''
    },
    success: function (data) {
      let videoFrame = document.getElementById("videoFrame");
      videoFrame.src = data;
      videoFrame.style.display = "block"; // 取得影片後才顯示
    },
    error: function () {
      console.error("載入影片失敗");
    }
  });
}


function history() {
  $.ajax({
    url: "./php/history.php",
    dataType: "json",
    success: function(data) {
      var len = data.length;
      for (var i = 1; i < len; i++) {
        var timline_div = document.getElementById("history_timeline");
        var li = document.createElement("li");
        var div = document.createElement("div");
        var time = document.createElement("time");
        var p = document.createElement("p");
        time.textContent = data[i]["year"];

        li.setAttribute("style", "width: 140px;");
        div.setAttribute("style", "height: 150px;");
        div.appendChild(time);

        // 正規表達法，把換行符號取代成</br>
        const event = data[i]["event"].replace(/\n/g, '</br>');
        p.innerHTML = event;

        div.appendChild(p);
        li.appendChild(div);
        timline_div.appendChild(li);
      }

      var li2 = document.createElement("li");
      timline_div.appendChild(li2);
    },
    error: function(xhr, status, error) {
      console.log(error);
    }
  });
}

function history_english() {
  $.ajax({
    url: "./php/history_english.php",
    dataType: "json",
    success: function(data) {
      var len = data.length;
      for (var i = 1; i < len; i++) {
        var timline_div = document.getElementById("history_timeline");
        var li = document.createElement("li");
        var div = document.createElement("div");
        var time = document.createElement("time");
        var p = document.createElement("p");
        time.textContent = data[i]["year"];

        li.setAttribute("style", "width: 140px;");
        div.setAttribute("style", "height: 150px;");
        div.appendChild(time);

        // 正規表達法，把換行符號取代成</br>
        const event = data[i]["event"].replace(/\n/g, '</br>');
        p.innerHTML = event;

        div.appendChild(p);
        li.appendChild(div);
        timline_div.appendChild(li);
      }

      var li2 = document.createElement("li");
      timline_div.appendChild(li2);
    },
    error: function(xhr, status, error) {
      console.log(error);
    }
  });
}

function swiper(){
  var swiper_div = document.getElementById("swiper-wrapper");
  for (var i=1; i<=20; i++) {
    var div = document.createElement("div");
    div.setAttribute('class','swiper-slide');
    var img = document.createElement("img");
    img.setAttribute('src',`picture/特色教室/classroom  (${i}).jpg`);
    div.appendChild(img);
    swiper_div.appendChild(div);
  }
  var swiper = new Swiper(".mySwiper-classroom", {
        autoplay: {
        delay: 2500,
        disableOnInteraction: false,
        },
        effect: "coverflow",
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: "auto",
        coverflowEffect: {
          rotate: 50,
          stretch: 0,
          depth: 100,
          modifier: 1,
          slideShadows: true,

        },
        /*下面的進度點
        pagination: {
          el: ".swiper-pagination",
        },
        */
      });
}

async function morenews() {
  try {
    const response = await fetch('./php/news.php');
    const data = await response.json();

    // 找置頂的消息
    let topnews_number = data[3].reduce((arr, item, index) => {
      if (item === "YES") arr.push(index);
      return arr;
    }, []);

    // 置頂的消息
    for (let i = 0; i < topnews_number.length; i++) {
      let n = topnews_number[i];
      let title = data[0][n];
      let date = data[1][n];
      let link = data[2][n];
      let newsTd = document.createElement("td");
      title = "📌" + "\xa0" + title;
      date = "\xa0\xa0\xa0\xa0" + date;
      newsTd.innerHTML = `<a style="text-decoration:none; color: #111B26;" href='${link}'>${title}</a>`;

      let newsDiv = document.getElementById(`topnews${i+1}`);
      newsDiv.appendChild(newsTd);

      let newsDate = document.createTextNode(date);
      newsTd.setAttribute('style','color: #111B26;');
      newsTd.appendChild(newsDate);
      newsDiv.appendChild(newsTd);
    }

    // 非置頂的消息
    for (let i = 1; i <= 8; i++) {
      if (topnews_number.indexOf(i - 1) !== -1 ) continue; // 如果是置頂消息，則跳過
      let title = data[0][i - 1];
      let date = data[1][i - 1];
      let link = data[2][i - 1];
      let newsTd = document.createElement("td");
      title = "● " + "\xa0" + title;
      date = "\xa0\xa0\xa0\xa0" + date;
      newsTd.innerHTML = `<a style="text-decoration:none; color: #111B26;" href='${link}'>${title}</a>`;

      let newsDiv = document.getElementById(`morenews${i}`);
      newsDiv.appendChild(newsTd);

      let newsDate = document.createTextNode(date);
      newsTd.setAttribute('style','color: #111B26;');
      newsTd.appendChild(newsDate);
      newsDiv.appendChild(newsTd);
    }
  } catch (error) {
    console.error(error);
  }
}


function page(){
  $.getJSON("./php/newsAndDate.php",function(data){

              var ary=data;

              var alldata=[]; 
              for(let i=0; i<ary[0].length; i++){  //放資料title+日期的陣列
                  alldata[i]=ary[0][i].toString()+"    "+ary[1][i].toString();
                  //ary.push((i+1).toString());
              }

              var link=[];
              for(let i=0; i<ary[2].length; i++){  //放資料連結的陣列
                  link[i]=ary[2][i];
              }

              //需要頁數、按鈕數量
              function showBtn(){   //放頁數按鈕
                var page=document.querySelector('.page_btn');  
                var btnNum=Math.ceil(alldata.length/10);  //需要的按鈕數(頁數) 每個按鈕放10筆資料
                // console.log(btnNum);

                var str='';     //按鈕數量(總共幾頁)
                for (var i=0;i<btnNum;i++){
                    str+=`<span>${i+1}</span>` //根據資料總筆數計算需要幾個按鈕(36/10=3.6~4)
                };
                page.innerHTML=str; //新增至總頁數

                var btn=document.querySelectorAll('.page_btn span'); //選取每顆按鈕
                for (var i=0;i<btn.length;i++){
                    //當按鈕有click動作，即啟動changePage這個function
                    btn[i].addEventListener('click', changePage.bind(this,(i+1),alldata,link));
                };   
              };
              changePage(1,alldata,link); //預設初始出現第一頁
              showBtn();

              function changePage(page,data,link){ //page(頁數按鈕)、data(把ary裡的資料帶入function)
                  var items = 10;   //每頁出現 10 筆資料
                  var pageIndexStart = (page-1)*items;  //每頁起始值 1 11 21
                  var pageIndexEnd = page * items;  //每頁結束值 10 20 30
                  var str=''; //塞資料用
                  for (var i=pageIndexStart;i<pageIndexEnd;i++){
                      if (i>=data.length){break;}
                      str+=`<li>
                              <a class="box" id="news${i+1}" style="text-decoration:none;width:500px;height:16px; color:#7592D1" href="${link[i]}">${data[i]}
                              </a>
                            </li><br>` 
                      // 在資料title+日期加日超連結
                  };
                  document.querySelector('.order-table').innerHTML=str;
              };
              });


}