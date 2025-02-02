<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="WebApplication1.delete" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cancel Reservation</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Cancel Reservation</h2>
            <asp:Label ID="lblRoomId" runat="server" Text="Room ID:"></asp:Label>
            <asp:TextBox ID="txtRoomId" runat="server" required="true"></asp:TextBox>
            <br />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel Reservation" OnClick="btnCancel_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Visible="false"></asp:Label>

        </div>
    </form>
</body>
</html>
