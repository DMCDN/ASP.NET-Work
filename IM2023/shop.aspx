<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="IM2023.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script lang="javascript" type="text/javascript">

        function btn_Transaction_onclick() {
            var answer = confirm("是否確定結帳");
            if (answer) {
                alert("Confirmed!");
                window.location = "ConfirmTransaction.aspx";
            }
            else { }
        }

    </script>
        <center>
<asp:DropDownList ID="ddlTypeFilter" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTypeFilter_SelectedIndexChanged" DataSourceID="SqlDataSourceTypes" DataTextField="p_type" DataValueField="p_type">
</asp:DropDownList>

<asp:SqlDataSource ID="SqlDataSourceTypes" runat="server" ConnectionString="<%$ ConnectionStrings:GlobalConnectionString %>" SelectCommand="SELECT DISTINCT [p_type] FROM [Product]"></asp:SqlDataSource>

<asp:Label ID="lblDebugInfo" runat="server" Text=""></asp:Label><br />

<asp:TextBox ID="txtMinPrice" runat="server" placeholder="最低價格" />
<asp:TextBox ID="txtMaxPrice" runat="server" placeholder="最高價格" />
<asp:TextBox ID="stPNameText" runat="server" placeholder="商品名稱篩選" />
<asp:Button ID="btnApplyFilter" runat="server" Text="套用" OnClick="btnApplyFilter_Click" />



            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="p_id" Width="1200px" AllowSorting="True" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="編號" InsertVisible="False" SortExpression="p_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("p_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("p_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="類型" SortExpression="p_type">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("p_type") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("p_type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="p_name" HeaderText="名稱" SortExpression="p_name" />
                <asp:BoundField DataField="p_left" HeaderText="剩餘數量" SortExpression="p_left" />
                <asp:TemplateField HeaderText="價格" SortExpression="p_price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("p_price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("p_price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="數量">
                <ItemTemplate>
                    <asp:TextBox ID="stQuantity" runat="server" TextMode="Number" placeholder="數量" Text="1" />
                    <asp:Button ID="btnAddToCart" runat="server" Text="加入購物車" OnClick="btn_AddToCart_Click" />
                </ItemTemplate>
            </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

        </center>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GlobalConnectionString %>" SelectCommand="SELECT [p_id], [p_name], [p_left], [p_price], [p_type] FROM [Product]" 
            ></asp:SqlDataSource>
    




</asp:Content>
