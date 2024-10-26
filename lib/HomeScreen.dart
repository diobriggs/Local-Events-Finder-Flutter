import 'package:flutter/material.dart';
import 'EventsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _locationController = TextEditingController();
  final List<String> _suggestedLocations = [
    'Atlanta, GA', 'New York, NY', 'Los Angeles, CA', 'Chicago, IL', 'Houston, TX',
    'Phoenix, AZ', 'Philadelphia, PA', 'San Antonio, TX', 'San Diego, CA', 'Dallas, TX',
    'Austin, TX', 'Jacksonville, FL', 'Columbus, OH', 'Indianapolis, IN', 'Fort Worth, TX',
    'Charlotte, NC', 'San Francisco, CA', 'Seattle, WA', 'Denver, CO', 'Boston, MA',
    'Nashville, TN', 'Detroit, MI', 'Oklahoma City, OK', 'Portland, OR', 'Las Vegas, NV',
    'Baltimore, MD', 'Milwaukee, WI', 'Albuquerque, NM', 'Tucson, AZ', 'Fresno, CA',
    'Sacramento, CA', 'Kansas City, MO', 'Mesa, AZ', 'Atlanta, GA', 'Omaha, NE', 'Miami, FL',
    'Long Beach, CA', 'Virginia Beach, VA', 'Oakland, CA', 'Minneapolis, MN', 'Tulsa, OK'
    // Add more major cities across each state here
  ];

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  void _navigateToEventsScreen(BuildContext context) {
    String location = _locationController.text.trim();

    if (location.isNotEmpty && location.contains(',')) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EventsScreen(location: location),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Invalid Format'),
          content: Text('Please enter the city and state in the correct format (e.g., "Atlanta, GA").'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Events Finder App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter City and State (e.g., "Atlanta, GA")',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'City, State',
                hintText: 'Enter City, State',
              ),
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              hint: Text('Select a Location'),
              onChanged: (value) {
                _locationController.text = value!;
              },
              items: _suggestedLocations.map((location) {
                return DropdownMenuItem(
                  value: location,
                  child: Text(location),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _navigateToEventsScreen(context),
              child: Text('Find Events'),
            ),
          ],
        ),
      ),
    );
  }
}
