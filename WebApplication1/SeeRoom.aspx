<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeeRoom.aspx.cs" Inherits="WebApplication1.SeeRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Room List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

    <style>
        body {
            background-color: #f8f9fa; /* Light gray background */
        }

        .table-container {
            max-width: 900px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        .table {
            border-radius: 10px;
            overflow: hidden;
        }

        thead {
            background-color: #007bff;
            color: white;
            text-align: center;
        }

        tbody tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container">
            <div class="table-container">
                <h2 class="text-center mb-4 text-primary">Room Details</h2>
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Room Name</th>
                            <th scope="col">Room Location</th>
                            <th scope="col">Room Capacity</th>
                            <th scope="col">Status</th>
                            <th scope="col">Action</th>

                        </tr>
                    </thead>
                    <tbody id="table1" runat="server">
                    </tbody>
                </table>
            </div>
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
