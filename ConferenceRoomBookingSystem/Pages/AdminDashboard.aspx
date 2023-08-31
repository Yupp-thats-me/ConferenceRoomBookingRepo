<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="ConferenceRoomBookingSystem.AdminDashboard" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
    </nav>

    <div class="container mt-4">
        <h2>Analytics</h2>
        <div class="row">
            <div class="col-md-6">
                <!-- Display peak booking times using Razor syntax -->
                <h4>Peak Booking Times</h4>
                <ul>
                    @foreach (var time in PeakBookingTimes)
                    {
                        <li>@time</li>
                    }
                </ul>
            </div>
            <div class="col-md-6">
                <!-- Display other analytics or insights -->
            </div>
        </div>

        <h2>Manage Bookings</h2>
        <!-- Display a list of bookings with options to approve/reject -->
        <table class="table">
            <thead>
                <tr>
                    <th>Booking ID</th>
                    <th>Room</th>
                    <th>User</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach (var booking in Bookings)
                {
                    <tr>
                        <td>@booking.Id</td>
                        <td>@booking.Room</td>
                        <td>@booking.User</td>
                        <td>@booking.StartTime</td>
                        <td>@booking.EndTime</td>
                        <td>@booking.Status</td>
                        <td>
                            <button class="btn btn-sm btn-success" onclick="approveBooking(@booking.Id)">Approve</button>
                            <button class="btn btn-sm btn-danger" onclick="rejectBooking(@booking.Id)">Reject</button>
                        </td>
                    </tr>
                }
            </tbody>
        </table>
    </div>
</body>
</html>
