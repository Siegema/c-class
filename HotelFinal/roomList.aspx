<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="roomList.aspx.cs" Inherits="HotelFinal.roomList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="152px" Width="372px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:BoundField DataField="roomNo" HeaderText="roomNo" SortExpression="roomNo" />
                <asp:BoundField DataField="noBed" HeaderText="noBed" SortExpression="noBed" />
                <asp:BoundField DataField="sizeBed" HeaderText="sizeBed" SortExpression="sizeBed" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"  />
               
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="button" runat="server" Text="Book" OnClick="button_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Button ID="Button1" runat="server" OnClick="button_Click"  Text="Button" />
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelConnectionString %>" SelectCommand="SELECT [roomNo], [noBed], [sizeBed], [price] FROM [room]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="back" runat="server" Text="Back" OnClick="back_Click" />
    </form>
</body>
</html>