<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="ConferenceRoomBookingSystem.UserDashboard" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">User Dashboard</a>
    </nav>

    <div class="container mt-4">
        <h2>Welcome to Your Dashboard</h2>

        <div class="row">
            <div class="col-md-6">
                <h3>Upcoming Events</h3>
                <div class="list-group">
                    <asp:Repeater ID="rptUpcomingEvents" runat="server">
                        <ItemTemplate>
                            <a href="#" class="list-group-item">
                                <h5 class="mb-1"><%# Eval("Title") %></h5>
                                <small><strong>Start:</strong> <%# Eval("Start", "{0:dd MMM yyyy, HH:mm}") %></small>
                                <br />
                                <small><strong>End:</strong> <%# Eval("End", "{0:dd MMM yyyy, HH:mm}") %></small>
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="col-md-6">
                <h3>Booking History</h3>
                <div class="list-group">
                    <asp:Repeater ID="rptBookingHistory" runat="server">
                        <ItemTemplate>
                            <a href="#" class="list-group-item">
                                <h5 class="mb-1"><%# Eval("Title") %></h5>
                                <small><strong>Start:</strong> <%# Eval("Start", "{0:dd MMM yyyy, HH:mm}") %></small>
                                <br />
                                <small><strong>End:</strong> <%# Eval("End", "{0:dd MMM yyyy, HH:mm}") %></small>
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
