<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="shoppingCart.aspx.cs" Inherits="IM2023.shoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- 這裡可以添加該頁面的標頭內容 -->
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridViewCart" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <Columns>
            <asp:BoundField DataField="p_id" HeaderText="ID" SortExpression="p_id" />
            <asp:BoundField DataField="ProductName" HeaderText="商品名稱" SortExpression="ProductName" />
            <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="價格" SortExpression="Price" />
            <asp:TemplateField HeaderText="移除">
                <ItemTemplate>
                    <asp:Button ID="btn_RemoveFromCart" runat="server" Text="移除" OnClick="btn_RemoveFromCart_Click" CommandArgument='<%# Eval("p_id") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:GridView>

    <asp:GridView ID="GridViewTotal" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <Columns>
            <asp:BoundField DataField="Total" HeaderText="總價" />
        </Columns>
    </asp:GridView>

    <asp:Button ID="BtnSendOrder" runat="server" Text="送出訂單" OnClick="BtnSendOrder_Click" />
    </form>
</body>
</html>
