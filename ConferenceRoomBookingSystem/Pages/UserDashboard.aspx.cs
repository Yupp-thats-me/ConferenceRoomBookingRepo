using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace ConferenceRoomBookingSystem
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUpcomingEvents();
                BindBookingHistory();
            }
        }

        private void BindUpcomingEvents()
        {
            // Simulate data retrieval from the database
            List<Booking> upcomingEvents = GetUpcomingEventsForUser();

            rptUpcomingEvents.DataSource = upcomingEvents;
            rptUpcomingEvents.DataBind();
        }

        private void BindBookingHistory()
        {
            // Simulate data retrieval from the database
            List<Booking> bookingHistory = GetBookingHistoryForUser();

            rptBookingHistory.DataSource = bookingHistory;
            rptBookingHistory.DataBind();
        }

        private List<Booking> GetUpcomingEventsForUser()
        {
            // Simulate data retrieval from the database
            DateTime currentDate = DateTime.Now;
            return new List<Booking>
            {
                new Booking { Title = "Upcoming Event 1", Start = currentDate.AddHours(24), End = currentDate.AddHours(26) },
                new Booking { Title = "Upcoming Event 2", Start = currentDate.AddHours(48), End = currentDate.AddHours(50) }
            };
        }

        private List<Booking> GetBookingHistoryForUser()
        {
            // Simulate data retrieval from the database
            DateTime currentDate = DateTime.Now;
            return new List<Booking>
            {
                new Booking { Title = "Past Event 1", Start = currentDate.AddHours(-72), End = currentDate.AddHours(-70) },
                new Booking { Title = "Past Event 2", Start = currentDate.AddHours(-120), End = currentDate.AddHours(-118) }
            };
        }
    }

    public class Booking
    {
        public string Title { get; set; }
        public DateTime Start { get; set; }
        public DateTime End { get; set; }
    }
}
