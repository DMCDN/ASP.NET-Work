<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="finwork.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
     <marquee direction="right" bgcolor="yellow" scrollamount="15"  hspace=”30" scrollamount=”8"  behavior="alternate"><h4><strong>歡迎來到電腦組裝網</strong> </h4></marquee>
    <div class="container">
        <header class="event-show">
          <div id="image-slider">
            <button id="prev-btn">&lt;</button>
            <div id="image-container">
                <div class="image-wrapper">
                    <a href="#"><img class="image" src="./images/event1.png" alt="Image 1"></a>
                </div>
                <div class="image-wrapper">
                    <a href="#"><img class="image" src="./images/event2.png" alt="Image 2"></a>
                </div>
                <div class="image-wrapper">
                  <a href="#"><img class="image" src="./images/event3.png" alt="Image 3"></a>
                </div>
                <div class="image-wrapper">
                  <a href="#"><img class="image" src="./images/event4.png" alt="Image 4"></a>
                </div>
                <div class="image-wrapper">
                  <a href="#"><img class="image" src="./images/event5.png" alt="Image 5"></a>
                </div>
                <div class="image-wrapper">
                  <a href="#"><img class="image" src="./images/event6.png" alt="Image 6"></a>
                </div>
                <div class="image-wrapper">
                  <a href="#"><img class="image" src="./images/event7.png" alt="Image 7"></a>
                </div>
                <div class="image-wrapper">
                  <a href="#"><img class="image" src="./images/event8.png" alt="Image 8"></a>
                </div>
                <div class="image-wrapper">
                  <a href="#"><img class="image" src="./images/event9.png" alt="Image 9"></a>
                </div>
                <!-- Add more image wrappers as needed -->
            </div>
            <button id="next-btn">&gt;</button>
            <div id="image-counter">
              <span class="dot active" onclick="currentSlide(1)"></span>
              <span class="dot active" onclick="currentSlide(2)"></span>
              <span class="dot active" onclick="currentSlide(3)"></span>
              <span class="dot active" onclick="currentSlide(4)"></span>
              <span class="dot active" onclick="currentSlide(5)"></span>
              <span class="dot active" onclick="currentSlide(6)"></span>
              <span class="dot active" onclick="currentSlide(7)"></span>
              <span class="dot active" onclick="currentSlide(8)"></span>
              <span class="dot active" onclick="currentSlide(9)"></span>
            </div>
          </div>    
            <div class="additional-images">
                <a href="https://reurl.cc/RyK0oZ"><img class="img" src="./images/event-r1.png" alt="Extra Image 1"></a>
                <a href="https://www.sinya.com.tw/"> <img class="img" src="./images/event-r2.png" alt="Extra Image 2"></a>
            </div>
        </header>
        <!-- News cards  -->
        <section class="News-cards">
          <div>
            <a href="https://www.coolpc.com.tw/tw/shop/outdoor-sciene/rog-strix-arion-lite-ssd/"><img src="./images/news1.jpg" alt=""></a>
            <h3>2024 ROG STRIX ARION LITE 搭購SSD限時優惠中！</h3>
            <p>
              電競潮男必不可少的潮流單品！過去平日大家忙於工作，該如何在新的一年的生活中、工作場所、幫後輩重灌電腦時不經意地展現出專業玩家的氣質呢？說到話題度、搶眼度都極高的「電競風格」代表肯定是 ROG STRIX ARION Lite 外接盒啦，未來風格設計並搭配 ASUS Aura Sync 燈光效果，還有著高達 10 Gbps 讀寫速度...
            </p>
            <a href="https://www.coolpc.com.tw/tw/shop/outdoor-sciene/rog-strix-arion-lite-ssd/" class="btn-e"><span>查看更多...</span></a>
          </div>
          <div>
            <a href="https://www.coolpc.com.tw/tw/shop/monitor/benq-pd2706ua-pro-design/"><img src="./images/news2.jpg" alt="" /></a>
            <h3>【新品優惠+開箱】BENQ PD2706UA 專業設計繪圖螢幕。</h3>
            <p>
              這四年你過得好嗎？你買得起 4K HDR 螢幕嗎？1080p 再 4 年你受的了嗎？給自己一個改變的機會，2024...你需要 4K 解析度的 BenQ PD2706UA 專業設計繪圖螢幕，當然我也知道不便宜，但對專業創作者來說只要是用的到都不是浪費！何況它極有可能輔助各大創作者賺進大把鈔票...
            </p>
            <a href="https://www.coolpc.com.tw/tw/shop/monitor/benq-pd2706ua-pro-design/" class="btn-e"><span>查看更多...</span></a>
          </div>
          <div>
            <a href="https://www.coolpc.com.tw/tw/shop/gpu/asus-dual-rtx4060ti-o8g-ssd/"><img src="./images/news3.jpg" alt="" /></a>
            <h3>【促銷+開箱】滿血效能還超級降溫！華碩DUAL RTX4060TI O8G SSD顯卡限量販售</h3>
            <p>
              介紹你這張華碩 DUAL RTX4060TI O8G SSD顯卡，內建M.2 SSD插槽和顯示卡完美結合，享受顯卡的強勁效能，SSD也同時擁有絕佳的散熱效果！SSD最高還可安裝PCIe Gen5規格，實測顯卡和SSD同時滿載...
            </p>
            <a href="https://www.coolpc.com.tw/tw/shop/gpu/asus-dual-rtx4060ti-o8g-ssd/" class="btn-e"><span>查看更多...</span></a>
          </div>
          <div>
            <a href="https://www.coolpc.com.tw/tw/shop/case/montech-king-95-pro-w/"><img src="./images/news4.jpg" alt="" /></a>
            <h3>【開箱】雙面「曲」景，帝王美居磅礡落成！MONTECH KING 95 PRO機殼。</h3>
            <p>
              這就是去年GAMFORCE 2023秒殺款機殼「Montech KING 95 PRO」，採用時下最流行的全景玻璃外觀，特別的是加入工業級曲面鋼化玻璃，各種角度視野都不間斷，觀賞性直接提升一個檔次。另外也提供曲面網孔面板，能夠在美觀與散熱性能間自由變化。內部也是採用流行的雙艙體分艙設計...
            </p>
            <a href="https://www.coolpc.com.tw/tw/shop/case/montech-king-95-pro-w/" class="btn-e"><span>查看更多...</span></a>
          </div>
        </section>
    </div>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js'></script>
    <script  src="./snow.js"></script>
    <script src="./main.js"></script>
</asp:Content>
