import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  final String location;

  EventsScreen({required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events in $location'),
      ),
      body: Center(
        child: Text('List of events for $location'),
      ),
    );
  }
}
