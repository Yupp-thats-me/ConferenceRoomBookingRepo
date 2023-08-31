using Microsoft.AspNetCore.SignalR;

public class AvailabilityHub : Hub
{
    public async Task UpdateAvailability(string roomId, bool isAvailable)
    {
        await Clients.All.SendAsync("UpdateAvailability", roomId, isAvailable);
    }
}
