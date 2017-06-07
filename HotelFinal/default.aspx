<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="HotelFinal.deafult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="margin-left: 45%">Hotel</h1>
    <form id="form1" runat="server">
    <div style="margin-left: 45%">
       
        <br />
        
        <asp:Button ID="booking" runat="server" Text="Book Room" OnClick="booking_Click"/>
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Review Booking" OnClick="Button2_Click" style="height: 26px" />
        
    </div>
    </form>
</body>
</html>
