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
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Date: $eventDate', style: TextStyle(fontSize: 18)),
            Text('Time: $eventTime', style: TextStyle(fontSize: 18)),
            Text('Price: $eventPrice', style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 20),
            Text(
              'Description of the event goes here. You can provide additional details such as location, activities, or special notes for the event.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
