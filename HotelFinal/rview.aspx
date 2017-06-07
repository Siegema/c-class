<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rview.aspx.cs" Inherits="HotelFinal.rview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="back" runat="server" Text="Back" OnClick="back_Click" />
    
        <br />
        
        <asp:TextBox ID="user" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="id" runat="server"></asp:TextBox>
        
        <br />
        <asp:Button ID="cancel" runat="server" Text="Cancel Booking" OnClick="cancel_Click" />
    
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
    </div>
    </form>
</body>
</html>
