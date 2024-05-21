<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="IM2023.login" %>
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
    <h3>Login登入</h3><br />
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<asp:TextBox ID="UsernameTextBox" runat="server" placeholder="帳號"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsernameTextBox" ErrorMessage="帳號不得為空白" ForeColor="Red"></asp:RequiredFieldValidator>  
    <br /><br />
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" placeholder="密碼"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="密碼不得為空白" ForeColor="Red"></asp:RequiredFieldValidator>  
    <br /><br />
    <asp:CheckBox ID="RememberMeCheckBox" runat="server" Text="記住我" />&emsp;&emsp;
    <asp:Button ID="LoginButton" runat="server" Text="登入" OnClick="LoginButton_Click" Style="width: 80px; height: 50px;" BorderColor="#0033CC" BackColor="White" />
    <br /><br />
    <asp:Label ID="StatusLabel" runat="server" EnableViewState="false"></asp:Label>
    <br /><br />
    <br /><br />
        <br /><br />
</asp:Content>
