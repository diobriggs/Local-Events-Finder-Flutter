import 'package:flutter/material.dart';

class EventDetailsScreen extends StatelessWidget {
  final String eventName;
  final String eventDate;
  final String eventTime;
  final String eventPrice;

  EventDetailsScreen({
    required this.eventName,
    required this.eventDate,
    required this.eventTime,
    required this.eventPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(eventName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              eventName,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.teal[800]),
            ),
            Divider(color: Colors.teal, thickness: 1),
            SizedBox(height: 12),
            Text('Date: $eventDate', style: TextStyle(fontSize: 18)),
            Text('Time: $eventTime', style: TextStyle(fontSize: 18)),
            Text('Price: $eventPrice', style: TextStyle(fontSize: 18, color: Colors.orange[700])),
            SizedBox(height: 24),
            Text(
              'Event details and description would go here. Include any extra information about the event, location, or special instructions.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
