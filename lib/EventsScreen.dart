import 'package:flutter/material.dart';
import 'EventDetailsScreen.dart';

class EventsScreen extends StatelessWidget {
  final String location;

  EventsScreen({required this.location});

  final Map<String, List<Map<String, String>>> eventsData = {
    'Atlanta, GA': [
      {'name': 'Music Festival', 'date': '2024-11-10', 'time': '5:00 PM', 'price': '\$50'},
      {'name': 'Food Truck Event', 'date': '2024-11-12', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'Art Exhibit', 'date': '2024-11-15', 'time': '10:00 AM', 'price': '\$30'}
    ],
    // Add more events as needed
  };

  @override
  Widget build(BuildContext context) {
    final events = eventsData[location] ?? [{'name': 'No events available', 'date': '', 'time': '', 'price': ''}];

    return Scaffold(
      appBar: AppBar(
        title: Text('Events in $location'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // City image at the top
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/$location.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Display a placeholder if the image is not found
                  return Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text(
                        'Image not available',
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text(
                        event['name']!,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal[800]),
                      ),
                      subtitle: Text('${event['date']} at ${event['time']}'),
                      trailing: Text(
                        event['price']!,
                        style: TextStyle(color: Colors.orange[700], fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventDetailsScreen(
                              eventName: event['name']!,
                              eventDate: event['date']!,
                              eventTime: event['time']!,
                              eventPrice: event['price']!,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
