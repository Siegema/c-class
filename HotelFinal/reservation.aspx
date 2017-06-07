<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reservation.aspx.cs" Inherits="HotelFinal.reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 33%">
    
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <br />
    
        <asp:TextBox ID="name" name="Name" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            
        <asp:TextBox ID="address" name="Name" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="address" Display="Dynamic" ErrorMessage="adress must not me empty"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" Text="Prov"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="city" pattern="[A-Za-z\s]*" title="City names(no number)"  runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="prov" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Card No"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="Expire date"></asp:Label>
        <br />
        <asp:TextBox ID="credit" pattern="[54]{1}[0-9]{15}" title="Credit Cards" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="exp" type="date" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="sdate" runat="server" Text="Start Date"></asp:Label>
        <br />
        <asp:TextBox ID="sta" type="date" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="edate" runat="server" Text="End Date"></asp:Label>
        :<br />
        :<asp:TextBox ID="end" type="date" runat="server" ></asp:TextBox>
        <br />
        &nbsp;&nbsp; <asp:Button ID="cont" runat="server" Text="Continue" OnClick="cont_Click" />
        <br />
    
    </div>
    &nbsp;<br />
    </form>
</body>
</html>
