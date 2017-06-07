<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="receipt.aspx.cs" Inherits="HotelFinal.receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 369px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name:&nbsp;&nbsp;</td>
                <td>
                    <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Adress:&nbsp;&nbsp;</td>
                <td>
                    <asp:Label ID="add" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">City:</td>
                <td>
                    <asp:Label ID="city" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Prov:&nbsp;</td>
                <td> <asp:Label ID="prov" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Card No:</td>
                <td><asp:Label ID="card" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Room No:</td>
                <td>
                    <asp:Label ID="lblRoom" runat="server" Text="Label"></asp:Label><td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Price:</td>
                <td>
                    <asp:Label ID="lblPrive" runat="server" Text="Label"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="btn" runat="server" Text="Confirm" OnClick="btn_Click" />
         
        <br />
        <asp:Button ID="back" runat="server" Text="Back" />
   
    </div>
    </form>
</body>
</html>
