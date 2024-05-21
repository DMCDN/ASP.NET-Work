<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="IM2023.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        
        input{
          padding: 10px;
          border: none; 
          border:solid 1px #ccc;
          border-radius: 10px;
        }
        input:hover{
          color:#003C9D;
          background-color:#fff;
          border:5px #003C9D solid;
        }

        input[type=text] {
          border: none;
          border-bottom: 2px solid #003C9D;
        }
        input[type=password] {
          border: none;
          border-bottom: 2px solid #003C9D;
        }
        input[type=text]:focus {
          border: 3px solid #555;
        }

    </style>
    <center><br />
    <h3>註冊</h3><br />
     &emsp;<asp:TextBox ID="UsernameTextBox" runat="server" placeholder="帳號"></asp:TextBox><br /><br />
     &emsp;<asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" placeholder="密碼"></asp:TextBox><br /><br />
    <asp:Button ID="RegisterButton" runat="server" Text="註冊" OnClick="RegisterButton_Click" Style="width: 80px; height: 50px;" BorderColor="#0033CC" BackColor="White"/>
    <asp:Label ID="StatusLabel" runat="server" EnableViewState="false" ></asp:Label>
        <br /><br /><br /><br /><br /><br />
</asp:Content>
