import 'package:flutter/material.dart';
import 'EventsScreen.dart'; // Import the EventsScreen from a separate file

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _locationController = TextEditingController();

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  void _navigateToEventsScreen(BuildContext context) {
    String location = _locationController.text.trim();

    // Validate if the input is in the correct format (City, State)
    if (location.isNotEmpty && location.contains(',')) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EventsScreen(location: location),
        ),
      );
    } else {
      // Show a simple alert if the input is not valid
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
