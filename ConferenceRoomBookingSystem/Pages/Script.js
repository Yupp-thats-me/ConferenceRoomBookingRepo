$(document).ready(function () {
    var connection = new signalR.HubConnectionBuilder()
        .withUrl('/availabilityHub')
        .build();

    connection.on('UpdateAvailability', function (roomId, isAvailable) {
        // Update room availability status in real time
    });

    connection.start().catch(function (err) {
        console.error(err.toString());
    });

    // Other scripts for search, filters, and analytics

    // Function to book a room
    function bookRoom() {
        // Get booking details from the form
        var title = $('#title').val();
        var start = $('#start').val();
        var end = $('#end').val();

        // Create a JSON object with the booking details
        var bookingData = {
            title: title,
            start: start,
            end: end
        };

        // Send booking details to the server using AJAX
        $.ajax({
            type: 'POST',
            url: '/api/bookings', // Replace with your API endpoint
            data: JSON.stringify(bookingData),
            contentType: 'application/json',
            success: function (response) {
                // Handle success, maybe refresh the calendar or show a success message
                console.log('Booking successful:', response);
            },
            error: function (error) {
                // Handle error, show an error message, or handle validation errors
                console.error('Booking failed:', error);
            }
        });

        // Prevent form submission
        return false;
    }


    // Function to approve a booking
    function approveBooking(bookingId) {
        // Send approval request to the server using Fetch API
        fetch(`/api/bookings/${bookingId}/approve`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            }
        })
            .then(response => response.json())
            .then(data => {
                // Update the UI to show that the booking is approved
                console.log('Booking approved:', data);
            })
            .catch(error => {
                // Handle error, show an error message, or perform error handling
                console.error('Approval failed:', error);
            });
    }


    // Function to reject a booking
    function rejectBooking(bookingId) {
        // Send rejection request to the server using Fetch API
        fetch(`/api/bookings/${bookingId}/reject`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            }
        })
            .then(response => response.json())
            .then(data => {
                // Update the UI to show that the booking is rejected
                console.log('Booking rejected:', data);
            })
            .catch(error => {
                // Handle error, show an error message, or perform error handling
                console.error('Rejection failed:', error);
            });
    }


    // Attach functions to the global window object to make them accessible from HTML
    window.bookRoom = bookRoom;
    window.approveBooking = approveBooking;
    window.rejectBooking = rejectBooking;
});
