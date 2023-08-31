using System;
using System.Net;
using System.Net.Mail;
using System.Collections.Generic;
using System.Web.UI;
using Microsoft.AspNetCore.SignalR.Client;
using System.Web.Script.Serialization;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace ConferenceRoomBookingSystem
{
    public partial class ConferenceRooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Booking> bookings = new List<Booking>
            {
                new Booking { Title = "Meeting A", Start = DateTime.Parse("2023-09-01T10:00:00"), End = DateTime.Parse("2023-09-01T12:00:00") },
                new Booking { Title = "Conference B", Start = DateTime.Parse("2023-09-02T14:00:00"), End = DateTime.Parse("2023-09-02T17:00:00") }
                // Add more bookings here
            };

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            hdnBookings.Value = serializer.Serialize(bookings);
        }
    }

    public class Booking
    {
        public string Title { get; set; }
        public DateTime Start { get; set; }
        public DateTime End { get; set; }
    }
}
