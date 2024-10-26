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
    'New York, NY': [
      {'name': 'Broadway Show', 'date': '2024-11-11', 'time': '8:00 PM', 'price': '\$150'},
      {'name': 'Central Park Yoga', 'date': '2024-11-13', 'time': '9:00 AM', 'price': '\$20'},
      {'name': 'Fashion Week', 'date': '2024-11-16', 'time': '1:00 PM', 'price': '\$100'}
    ],
    // Add more cities and events as needed
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
          children: <Widget>[
            SizedBox(
              width: 350,
              height: 350,
              child: Image.asset('assets/$location.png', errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.image, size: 100);
              }),
            ),
            SizedBox(height: 20),
            Text('List of events for $location', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return ListTile(
                    title: Text(event['name']!),
                    subtitle: Text('${event['date']} at ${event['time']}'),
                    trailing: Text(event['price']!),
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
