<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConferenceRooms.aspx.cs" Inherits="ConferenceRoomBookingSystem.ConferenceRooms" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conference Room Booking</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.1.0/fullcalendar.min.css' rel='stylesheet' />
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.1.0/fullcalendar.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/@microsoft/signalr@5.0.11/dist/browser/signalr.min.js"></script>
    <script src="script.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Conference Booking</a>
    </nav>

    <div class="container mt-4">
        <div class="row">
            <div class="col-md-8">
                <div id="calendar"></div>
            </div>
            <div class="col-md-4">
                <h3>Book a Room</h3>
                <form id="bookingForm">
                    <div class="form-group">
                        <label for="title">Title:</label>
                        <input type="text" id="title" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="start">Start Time:</label>
                        <input type="datetime-local" id="start" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="end">End Time:</label>
                        <input type="datetime-local" id="end" class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Book Room</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
