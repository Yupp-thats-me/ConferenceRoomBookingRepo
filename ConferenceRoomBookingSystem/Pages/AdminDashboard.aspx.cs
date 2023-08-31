using System;
using System.Web.UI;
using System.Collections.Generic;
using ConferenceRoomBookingSystem.Models; // Update with your namespace
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace ConferenceRoomBookingSystem
{
    public partial class AdminDashboard : Page
    {
        protected List<string> PeakBookingTimes { get; set; }
        protected List<Booking> Bookings { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Load analytics data
            LoadAnalyticsData();

            // Load bookings for management
            LoadBookings();
        }

        private void LoadAnalyticsData()
        {
            // Fetch peak booking times from the database
            PeakBookingTimes = GetPeakBookingTimes(); // Implement this method

            // Fetch other analytics or insights if needed
        }

        private void LoadBookings()
        {
            // Fetch bookings for management from the database
            Bookings = GetBookingsForManagement(); // Implement this method
        }
    }
}
