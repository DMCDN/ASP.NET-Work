<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="ContectUs.aspx.cs" Inherits="IM2023.ContectUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
    .modal {
      display: none;
      position: fixed;
      z-index: 1;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      overflow: auto;
      background-color: rgba(0, 0, 0, 0.5);
    }

    .modal-content {
      background-color: #fefefe;
      margin: 15% auto;
      padding: 80px;
      border: 1px solid #888;
      width: 500px;
      text-align: center;
    }
      .close-button-container {
        position: relative;
        top: -50px;
      }
      .close-button {
        font-size: 40px;
      }
  </style>
  <script>
    function showModal() {
        var modal = document.getElementById("msgbox");
      modal.style.display = "block";
    }

    function hideModal() {
      var modal = document.getElementById("msgbox");
      modal.style.display = "none";
    }
  </script>

   <div>
        <center>
            <br />
  <h1>聯繫我們</h1>
  <br /><br />
  <a href="https://www.facebook.com" target="_blank">
    <img src="images/Facebook.png" alt="Facebook" width="120" height="120">
  </a>
  

  <a href="#" onclick="showModal()">
    <img src="images/gmail.png" alt="Gmail" width="120" height="100">
  </a>

    <div id="msgbox" class="modal">
      <div class="modal-content">
        <div class="close-button-container">
          <span class="close-button" onclick="hideModal()">&times;</span>
        </div>
        <h1>我們的Gmail:</h1></br>
        <h4>D1104241exp@gm.lhu.edu.tw</h4>
      </div>
    </div>
            <br /><br />
            <br /><br />
    <br /><br />
<br /><br />
            <br />
</center>
    </div>
</asp:Content>
