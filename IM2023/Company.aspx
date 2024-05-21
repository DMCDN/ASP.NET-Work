<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="IM2023._123" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="assets/img/favicon.png">
<title>關於我們</title>
<!--Stylesheet-->
<link href="assets/css/menu.css" rel="stylesheet">
<link href="assets/css/font-awesome.css" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"></script> 
<link href="assets/css/animate.css" rel="stylesheet">
<link href="style.css" rel="stylesheet"> 
<link href="assets/css/skins/mycolor.css" rel="stylesheet"> 
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
</head>
<body>
<div class="page-loader">
	<img src="assets/img/loader.gif" alt="">
</div>

<!-- Content here
================================================== -->
<section id="startcontent" class="page-wrapper gray-d">
<div class="container knowledgebase">
	<div class="row">

		<!--/left-->
		<!--right-->
		<div class="col-md-9">
			<h3 id="sec0">關於我們</h3>
			<div class="content">	
			  <p>
				  歡迎來到我們的網站，專營高品質電腦零件的購買與銷售。我們是一個致力於滿足客戶對最先進電腦硬體需求的網上平台。無論您是組裝電腦的專業人士還是對電腦科技充滿熱情的業餘愛好者，我們都為您提供全面的電腦零件選擇，確保您擁有最新、最優質的硬體設備。
			  <img src="computer.jpg" class="img-center">
			  
			  </p>
		      <p class="clearboth"></p>
			</div>
			<h3 id="sec1">公司組成</h3>
			<div class="content">				
			組員有： </br>
				<ul>
					<li>魏丞佑 (網頁製作)</br>
					<li>孫煒宸 (網頁製作) </br>
					<li>沈煒峻 (簡報製作)</br>
					<li>周杰廷 (簡報製作) </br>
					<li>林家昌 (網頁製作)</br>
					<li>陳子軒 (人類)</br>
					<li>謝俊安 (人類)</br>
					<li>李宗保 (網頁製作)
				</ul>
			</div>
			<h3 id="sec2">營業項目</h3>
			<div class="content">
				
				無論您需要升級現有系統、組裝全新電腦，或是進行維修與維護，我們的網站擁有豐富的產品範疇，包括但不限於：
				<ul>
				<li><strong>中央處理器（CPU）</strong>：來自各大廠商的高性能處理器，滿足您對運算速度的追求。

				<li><strong>顯示卡（GPU）</strong>：為您提供流暢遊戲體驗和強大的視覺效果。

				<li><strong>主機板（MB）</strong>：支援最新技術並提供穩定性的主機板，為系統提供堅實基礎。

				<li><strong>內存（RAM）</strong>：各種容量和速度的記憶體模組，滿足多任務處理和高效運行的需求。

				<li><strong>儲存設備（SSD&HDD）</strong>：SSD和HDD提供的高速儲存解決方案，確保您的系統快速啟動並提供大容量儲存空間。

				<li><strong>電源供應器（Power）</strong>：高效能的電源供應器，確保電腦運作穩定且可靠。</ul>

			</div>
			<h3 id="sec3">客戶服務</h3>
				<div class="content">
	
					我們重視客戶滿意度，提供快速、友善、專業的客戶服務。如果您在使用我們的網站或產品時遇到任何問題，請隨時與我們的客戶服務團隊聯繫，我們將竭誠為您提供協助。
					感謝您選擇我們，我們期待能為您提供卓越的電腦零件購物體驗。

				</div>
		</div>
		<!--/right-->
	</div>
</div>
</section>

<!-- JavaScript
================================================== -->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/parallax.js"></script>
<script src='assets/js/countto.js'></script>
<script src="assets/js/portfolio.js"></script>
<script src="assets/js/contact.js"></script>
<script src="assets/js/scripts.js"></script>
<script>
    $('#sidebar').affix({
        offset: {
            top: 540
        }
    });
    /* activate scrollspy menu */
    var $body = $(document.body);
    var navHeight = $('.navbar').outerHeight(true) + 10;
    $body.scrollspy({
        target: '#leftCol',
        offset: navHeight
    });
    /* smooth scrolling sections */
    $('a[href*=#]:not([href=#])').click(function () {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
            if (target.length) {
                $('html,body').animate({
                    scrollTop: target.offset().top - 50
                }, 1000);
                return false;
            }
        }
    });
	</script>
</body>
</html>
</asp:Content>
