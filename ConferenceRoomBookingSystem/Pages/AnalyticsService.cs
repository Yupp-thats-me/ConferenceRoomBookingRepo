using System;
using System.Collections.Generic;
using ConferenceRoomBookingSystem.Models; // Update with your namespace
using System.Linq;

public class AnalyticsService
{
    private readonly AppDbContext _dbContext; // Replace with your DbContext class

    public AnalyticsService(AppDbContext dbContext)
    {
        _dbContext = dbContext;
    }

    public List<string> GetPeakBookingTimes()
    {
        // Retrieve bookings from the database
        var bookings = _dbContext.Bookings.ToList();

        // Group bookings by hour and count the number of bookings in each hour
        var bookingsByHour = bookings
            .GroupBy(booking => booking.StartTime.Hour)
            .Select(group => new
            {
                Hour = group.Key,
                BookingCount = group.Count()
            })
            .OrderByDescending(group => group.BookingCount)
            .Take(5) // Get the top 5 peak booking hours
            .ToList();

        // Format the peak booking times as strings
        var peakTimes = new List<string>();
        foreach (var peakHour in bookingsByHour)
        {
            peakTimes.Add($"{peakHour.Hour}:00 - {peakHour.Hour + 1}:00");
        }

        return peakTimes;
    }

    // Other analytical methods
}
