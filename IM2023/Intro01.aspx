<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="Intro01.aspx.cs" Inherits="IM2023.Intro01" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <p>  
                    <asp:Label ID="WelText" runat="server" Font-Size="18pt">歡迎：</asp:Label>  

                    <asp:Label ID="WelText_UserName" runat="server" Font-Size="18pt"></asp:Label>  

                </p>  
            </div>  

    <video autoplay muted id="video1" runat="server" height="435px" width="817px">
    <source src="media/Lightning.mp4" type="video/mp4" />
    </video>
            <p>  
 </p>  
            <p>  
                <asp:Label ID="Label1" runat="server"></asp:Label>  
            </p>  
            <p>  
                <asp:Button ID="Button1" runat="server" Height="47px" onclick="Button1_Click"   
Text="登出" Width="92px" />  
            </p>  
   


</asp:Content>
