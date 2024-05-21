<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="QA.aspx.cs" Inherits="IM2023.QA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .accordion-button{
            background-color:#fffbe2;
        }
        .accordion-item{
            width:800px;
        }
    </style>
    <center>
        <br /><br />
        <h3>電腦組裝網訂購須知Q&A</h3>
        <br /><br />
    <div class="accordion" id="accordionPanelsStayOpenExample">
      <div class="accordion-item">
        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
          <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
            <strong>Q：付款方式是？ #1</strong>
          </button>
        </h2>
        <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
          <div class="accordion-body">
            <p align="left">
            Ａ：確認後可以使用匯款或者是貨到付款方式！<br />
            匯款:匯款視同現金優惠即可享運費全免（離島除外），我們極力推薦以匯款方式，資料如下<br />
            銀行代號 102<br />
            華泰商業銀行 迪化街分行<br />
            戶名：原價屋電腦股份有限公司<br />
            帳號：0203000089335<br />
            （因出貨時間依款項入帳日為準，如使用櫃台匯款可能會因假日延誤入帳而會耽誤出貨時間，建議使用ATM轉帳較無此疑慮。）<br />

            貨到付款:本公司採用黑貓宅急便運送，透由黑貓代收會有一筆手續費需另計，可若單筆購物總額超過一萬元，則免收運費！代收手續費需另計。<br />
            <strong>＊ 請注意！送出估價單須經由客服人員確認貨況及單價後方始成立，線上估價僅提供一個價格查詢平台，本身不具金流及交易過程，若價格有誤歡迎告知，送出訂單後會有專人聯繫服務並確認，勿直接匯款避免爭議喔。</strong><br />
            </p>
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
            <strong>Q：請問組裝需要另加費用嗎？ #2</strong>
          </button>
        </h2>
        <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
          <div class="accordion-body">
            <p align="left">
                A：免運條件：(任一條件成立皆可，離島地區每件加收200元)<br />
                1. 零件購買滿一萬元以上．<br />
                2. 只要是一台能開機嗶嗶的主機．<br />
                3. 採用匯款方式．(特殊節日或活動下殺商品例外！)<br />
                運費標準：<br />
                小件 -> NT.100 (長+寬+高=小於90公分)<br />
                中、大件 -> NT.150<br />
                離島地區 -> NT.360<br />
            </p>
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="panelsStayOpen-heading3">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapse3" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
            <strong>Q：誰被果乾？ #3</strong>
          </button>
        </h2>
        <div id="panelsStayOpen-collapse3" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-heading3">
          <div class="accordion-body">
            <p align="left">
                家昌被果乾
            </p>
          </div>
        </div>
      </div>
    </div>
        </center>
    <br /><br />

</asp:Content>
