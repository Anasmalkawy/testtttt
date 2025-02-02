<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication1.AdminPage" %>

<!DOCTYPE html>
<a href="file:///c:\users\anasj\desktop\test%20project\webapplication1\webapplication1\AdminPage.aspx.designer.cs">file:///c:\users\anasj\desktop\test project\webapplication1\webapplication1\AdminPage.aspx.designer.cs</a>
<a href="file:///c:\users\anasj\desktop\test%20project\webapplication1\webapplication1\AdminPage.aspx.designer.csfile:///c:\users\anasj\desktop\test%20project\webapplication1\webapplication1\AdminPage.aspx.cs">file:///c:\users\anasj\desktop\test project\webapplication1\webapplication1\AdminPage.aspx.designer.csfile:///c:\users\anasj\desktop\test project\webapplication1\webapplication1\AdminPage.aspx.cs</a>
<a href="file:///c:\users\anasj\desktop\test%20project\webapplication1\webapplication1\AdminPage.aspx.designer.csfile:///c:\users\anasj\desktop\test%20project\webapplication1\webapplication1\AdminPage.aspx.csfile:///c:\users\anasj\desktop\test%20project\webapplication1">file:///c:\users\anasj\desktop\test project\webapplication1\webapplication1\AdminPage.aspx.designer.csfile:///c:\users\anasj\desktop\test project\webapplication1\webapplication1\AdminPage.aspx.csfile:///c:\users\anasj\desktop\test project\webapplication1\webapplication1\AdminPage.aspx</a>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Room ID</th>
                        <th>Student Name</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody id="reservationTable" runat="server"></tbody>
            </table>

            <asp:TextBox ID="txtRoomID" runat="server" placeholder="Enter Room ID"></asp:TextBox>
            <asp:Button ID="btnApprove" runat="server" Text="Approve" OnClick="btnApprove_Click" />
            <asp:Button ID="btnReject" runat="server" Text="Reject" OnClick="btnReject_Click" />


            <div style="text-align:center; margin-top:20px;">
    <asp:Button ID="btnSeeRoom" runat="server" Text="See Room" PostBackUrl="~/SeeRoom.aspx" />
    <asp:Button ID="btnReserveRoom" runat="server" Text="Reserve Room" PostBackUrl="~/ReserveRoom.aspx" />
    <asp:Button ID="btnEdit" runat="server" Text="Edit" PostBackUrl="~/edit.aspx" />
    <asp:Button ID="btnAdmin" runat="server" Text="Admin" PostBackUrl="~/Admin.aspx" />
    <asp:Button ID="btnAdminPage" runat="server" Text="Admin Page" PostBackUrl="~/AdminPage.aspx" />
    <asp:Button ID="btnHome" runat="server" Text="Home" PostBackUrl="~/Default.aspx" />
    <asp:Button ID="btnLogout" runat="server" Text="Logout" PostBackUrl="~/Logout.aspx" />
</div>

        </div>
    </form>
</body>
</html>
