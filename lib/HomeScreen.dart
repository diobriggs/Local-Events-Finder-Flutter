import 'package:flutter/material.dart';
import 'EventsScreen.dart';
import 'FavoritesScreen.dart';

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
    'Sacramento, CA', 'Kansas City, MO', 'Mesa, AZ', 'Omaha, NE', 'Miami, FL',
    'Long Beach, CA', 'Virginia Beach, VA', 'Oakland, CA', 'Minneapolis, MN', 'Tulsa, OK',
    'Birmingham, AL', 'Montgomery, AL', 'Mobile, AL', 'Huntsville, AL', 'Tuscaloosa, AL',
    'Anchorage, AK', 'Fairbanks, AK', 'Juneau, AK', 'Sitka, AK', 'Ketchikan, AK',
    'Chandler, AZ', 'Glendale, AZ', 'Scottsdale, AZ', 'Gilbert, AZ',
    'Little Rock, AR', 'Fort Smith, AR', 'Fayetteville, AR', 'Springdale, AR', 'Jonesboro, AR',
    'San Jose, CA', 'Bakersfield, CA', 'Anaheim, CA', 'Santa Ana, CA',
    'Aurora, CO', 'Colorado Springs, CO', 'Fort Collins, CO', 'Lakewood, CO',
    'Bridgeport, CT', 'New Haven, CT', 'Stamford, CT', 'Hartford, CT', 'Waterbury, CT',
    'Wilmington, DE', 'Dover, DE', 'Newark, DE', 'Middletown, DE', 'Smyrna, DE',
    'Tampa, FL', 'Orlando, FL', 'St. Petersburg, FL', 'Hialeah, FL', 'Tallahassee, FL', 'Fort Lauderdale, FL', 'Port St. Lucie, FL',
    'Augusta, GA', 'Columbus, GA', 'Macon, GA', 'Savannah, GA',
    'Honolulu, HI', 'Hilo, HI', 'Kailua, HI', 'Kaneohe, HI', 'Waipahu, HI',
    'Boise, ID', 'Meridian, ID', 'Nampa, ID', 'Idaho Falls, ID', 'Pocatello, ID',
    'Aurora, IL', 'Naperville, IL', 'Joliet, IL', 'Rockford, IL', 'Springfield, IL',
    'Fort Wayne, IN', 'Evansville, IN', 'South Bend, IN', 'Carmel, IN',
    'Des Moines, IA', 'Cedar Rapids, IA', 'Davenport, IA', 'Sioux City, IA', 'Waterloo, IA',
    'Wichita, KS', 'Overland Park, KS', 'Olathe, KS', 'Topeka, KS',
    'Louisville, KY', 'Lexington, KY', 'Bowling Green, KY', 'Owensboro, KY', 'Covington, KY',
    'New Orleans, LA', 'Baton Rouge, LA', 'Shreveport, LA', 'Lafayette, LA', 'Lake Charles, LA',
    'Portland, ME', 'Lewiston, ME', 'Bangor, ME', 'South Portland, ME', 'Auburn, ME',
    'Frederick, MD', 'Rockville, MD', 'Gaithersburg, MD', 'Bowie, MD',
    'Worcester, MA', 'Springfield, MA', 'Lowell, MA', 'Cambridge, MA',
    'Grand Rapids, MI', 'Warren, MI', 'Sterling Heights, MI', 'Lansing, MI', 'Ann Arbor, MI',
    'Saint Paul, MN', 'Rochester, MN', 'Duluth, MN', 'Bloomington, MN',
    'Jackson, MS', 'Gulfport, MS', 'Southaven, MS', 'Biloxi, MS', 'Hattiesburg, MS'
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
        title: Text('Explore Events Near You'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Enter City and State',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 12),
                    TextField(
                      controller: _locationController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'City, State',
                        hintText: 'e.g., Atlanta, GA',
                      ),
                    ),
                    SizedBox(height: 16),
                    DropdownButton<String>(
                      isExpanded: true,
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
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => _navigateToEventsScreen(context),
                      child: Text('Find Events'),
                    ),
                    SizedBox(height: 16),
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
            ),
          ],
        ),
      ),
    );
  }
}
