
import 'package:flutter/material.dart';
import 'FavoritesScreen.dart';

class EventDetailsScreen extends StatefulWidget {
  final String eventName;
  final String eventDate;
  final String eventTime;
  final String eventPrice;
  final String eventDescription;

  EventDetailsScreen({
    required this.eventName,
    required this.eventDate,
    required this.eventTime,
    required this.eventPrice,
    required this.eventDescription,
  });

  @override
  _EventDetailsScreenState createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.eventName),
        actions: [
          IconButton(
            icon: Icon(isFavorited ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              setState(() {
                isFavorited = !isFavorited;
                if (isFavorited) {
                  favoritedEvents.add(widget.eventName);  // Add to favorites
                } else {
                  favoritedEvents.remove(widget.eventName);  // Remove from favorites
                }
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.eventName,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.teal[800]),
            ),
            Divider(color: Colors.teal, thickness: 1),
            Text("Date: ${widget.eventDate}"),
            Text("Time: ${widget.eventTime}"),
            Text("Price: ${widget.eventPrice}"),
            SizedBox(height: 10),
            Text(widget.eventDescription),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritesScreen()),
                );
              },
              child: Text("View Favorites"),
            ),
          ],
        ),
      ),
    );
  }
}
