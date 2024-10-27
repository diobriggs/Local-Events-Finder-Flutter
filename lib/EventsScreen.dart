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
      {'name': 'Broadway Show', 'date': '2024-11-10', 'time': '7:00 PM', 'price': '\$120'},
      {'name': 'Central Park Concert', 'date': '2024-11-12', 'time': '6:00 PM', 'price': 'Free'},
      {'name': 'Museum Night', 'date': '2024-11-15', 'time': '8:00 PM', 'price': '\$25'}
    ],
    'Los Angeles, CA': [
      {'name': 'Hollywood Movie Premiere', 'date': '2024-11-11', 'time': '8:00 PM', 'price': '\$75'},
      {'name': 'Foodie Fest', 'date': '2024-11-13', 'time': '11:00 AM', 'price': 'Free'},
      {'name': 'Sunset Art Walk', 'date': '2024-11-16', 'time': '4:00 PM', 'price': '\$20'}
    ],
    'Chicago, IL': [
      {'name': 'Jazz Concert', 'date': '2024-11-10', 'time': '6:30 PM', 'price': '\$40'},
      {'name': 'River Food Tour', 'date': '2024-11-14', 'time': '2:00 PM', 'price': '\$30'},
      {'name': 'Architecture Boat Tour', 'date': '2024-11-17', 'time': '10:00 AM', 'price': '\$45'}
    ],
    'Houston, TX': [
      {'name': 'Rodeo Festival', 'date': '2024-11-09', 'time': '3:00 PM', 'price': '\$20'},
      {'name': 'BBQ Cook-off', 'date': '2024-11-13', 'time': '1:00 PM', 'price': 'Free'},
      {'name': 'Art in the Park', 'date': '2024-11-18', 'time': '11:00 AM', 'price': '\$15'}
    ],
    'Phoenix, AZ': [
      {'name': 'Desert Music Festival', 'date': '2024-11-12', 'time': '5:00 PM', 'price': '\$60'},
      {'name': 'Food Truck Fiesta', 'date': '2024-11-14', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'Indigenous Art Fair', 'date': '2024-11-18', 'time': '9:00 AM', 'price': '\$25'}  
    ],
    'Philadelphia, PA': [
      {'name': 'Liberty Jazz Night', 'date': '2024-11-10', 'time': '7:00 PM', 'price': '\$30'},
      {'name': 'Historic Food Tasting', 'date': '2024-11-13', 'time': '1:00 PM', 'price': '\$20'},
      {'name': 'Art Museum Tour', 'date': '2024-11-16', 'time': '11:00 AM', 'price': '\$25'}
    ],
    'San Antonio, TX': [
      {'name': 'Fiesta at the Alamo', 'date': '2024-11-09', 'time': '5:00 PM', 'price': '\$20'},
      {'name': 'Market Square Fest', 'date': '2024-11-12', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'River Walk Lights', 'date': '2024-11-15', 'time': '6:00 PM', 'price': '\$10'}
    ],
    'San Diego, CA': [
      {'name': 'Beach Concert', 'date': '2024-11-11', 'time': '4:00 PM', 'price': '\$45'},
      {'name': 'Food & Wine Expo', 'date': '2024-11-13', 'time': '2:00 PM', 'price': '\$30'},
      {'name': 'Art on the Pier', 'date': '2024-11-16', 'time': '10:00 AM', 'price': '\$25'}
    ],
    'Dallas, TX': [
      {'name': 'Cowboy Music Fest', 'date': '2024-11-12', 'time': '7:00 PM', 'price': '\$50'},
      {'name': 'Food Festival', 'date': '2024-11-14', 'time': '11:00 AM', 'price': 'Free'},
      {'name': 'State Fair Rides', 'date': '2024-11-18', 'time': '12:00 PM', 'price': '\$15'}
    ],
    'Austin, TX': [
      {'name': 'Live Music Night', 'date': '2024-11-10', 'time': '6:00 PM', 'price': '\$40'},
      {'name': 'Street Food Bash', 'date': '2024-11-13', 'time': '5:00 PM', 'price': 'Free'},
      {'name': 'Art Studio Tour', 'date': '2024-11-17', 'time': '9:00 AM', 'price': '\$10'}
    ],
    'Jacksonville, FL': [
      {'name': 'Beach Festival', 'date': '2024-11-11', 'time': '5:00 PM', 'price': '\$25'},
      {'name': 'Food Truck Rally', 'date': '2024-11-14', 'time': '1:00 PM', 'price': 'Free'},
      {'name': 'Art Fair', 'date': '2024-11-17', 'time': '10:00 AM', 'price': '\$15'}    
    ],
    'Columbus, OH': [
      {'name': 'Music Showcase', 'date': '2024-11-12', 'time': '7:00 PM', 'price': '\$30'},
      {'name': 'Food Fest', 'date': '2024-11-15', 'time': '2:00 PM', 'price': 'Free'},
      {'name': 'Craft Market', 'date': '2024-11-18', 'time': '11:00 AM', 'price': '\$10'}
    ],
    'Indianapolis, IN': [
      {'name': 'Indy Jazz Festival', 'date': '2024-11-10', 'time': '6:30 PM', 'price': '\$35'},
      {'name': 'Food Truck Roundup', 'date': '2024-11-14', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'Gallery Opening', 'date': '2024-11-17', 'time': '5:00 PM', 'price': '\$20'}
    ],
    'Fort Worth, TX': [
      {'name': 'Fort Worth Rodeo', 'date': '2024-11-09', 'time': '3:00 PM', 'price': '\$40'},
      {'name': 'BBQ Fest', 'date': '2024-11-12', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'Western Art Expo', 'date': '2024-11-16', 'time': '11:00 AM', 'price': '\$15'}
    ],
    'Charlotte, NC': [
      {'name': 'Outdoor Music Jam', 'date': '2024-11-11', 'time': '6:00 PM', 'price': '\$25'},
      {'name': 'Food & Art Fair', 'date': '2024-11-14', 'time': '10:00 AM', 'price': 'Free'},
      {'name': 'Art in the Park', 'date': '2024-11-18', 'time': '9:00 AM', 'price': '\$20'}
    ],
    'San Francisco, CA': [
      {'name': 'Golden Gate Jazz Night', 'date': '2024-11-10', 'time': '7:00 PM', 'price': '\$60'},
      {'name': 'Gourmet Food Crawl', 'date': '2024-11-12', 'time': '1:00 PM', 'price': '\$45'},
      {'name': 'Art & Wine Festival', 'date': '2024-11-15', 'time': '10:00 AM', 'price': '\$30'}
    ],
    'Seattle, WA': [
      {'name': 'Music Under the Stars', 'date': '2024-11-09', 'time': '7:00 PM', 'price': '\$35'},
      {'name': 'Seafood Festival', 'date': '2024-11-12', 'time': '11:00 AM', 'price': 'Free'},
      {'name': 'Downtown Art Walk', 'date': '2024-11-17', 'time': '2:00 PM', 'price': '\$20'}
    ],
    'Denver, CO': [
      {'name': 'Rocky Mountain Blues', 'date': '2024-11-11', 'time': '8:00 PM', 'price': '\$45'},
      {'name': 'Food Fest', 'date': '2024-11-13', 'time': '3:00 PM', 'price': 'Free'},
      {'name': 'Art Market', 'date': '2024-11-16', 'time': '10:00 AM', 'price': '\$15'}
    ],
    'Boston, MA': [
      {'name': 'Back Bay Jazz Night', 'date': '2024-11-09', 'time': '6:30 PM', 'price': '\$50'},
      {'name': 'Food Truck Gala', 'date': '2024-11-13', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'Art at the Harbor', 'date': '2024-11-16', 'time': '10:00 AM', 'price': '\$25'}
    ],
    'Nashville, TN': [
      {'name': 'Country Music Festival', 'date': '2024-11-10', 'time': '5:00 PM', 'price': '\$55'},
      {'name': 'Southern Food Fest', 'date': '2024-11-12', 'time': '1:00 PM', 'price': 'Free'},
      {'name': 'Art in Music City', 'date': '2024-11-15', 'time': '11:00 AM', 'price': '\$20'}
    ],
    'Detroit, MI': [
      {'name': 'Detroit Jazz Fest', 'date': '2024-11-11', 'time': '7:00 PM', 'price': '\$40'},
      {'name': 'Foodie Heaven', 'date': '2024-11-13', 'time': '11:00 AM', 'price': 'Free'},
      {'name': 'Urban Art Showcase', 'date': '2024-11-16', 'time': '10:00 AM', 'price': '\$15'}
    ],
    'Oklahoma City, OK': [
      {'name': 'OKC Rodeo Night', 'date': '2024-11-10', 'time': '4:00 PM', 'price': '\$20'},
      {'name': 'Foodie Fest', 'date': '2024-11-14', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'Art in the Park', 'date': '2024-11-18', 'time': '9:00 AM', 'price': '\$10'}
    ],
    'Portland, OR': [
      {'name': 'Jazz in the Woods', 'date': '2024-11-10', 'time': '6:00 PM', 'price': '\$35'},
      {'name': 'Gourmet Street Fare', 'date': '2024-11-13', 'time': '2:00 PM', 'price': 'Free'},
      {'name': 'Art District Walk', 'date': '2024-11-15', 'time': '11:00 AM', 'price': '\$20'}
    ],
    'Las Vegas, NV': [
      {'name': 'Vegas Night Concert', 'date': '2024-11-12', 'time': '8:00 PM', 'price': '\$50'},
      {'name': 'Downtown Food Fest', 'date': '2024-11-14', 'time': '11:00 AM', 'price': 'Free'},
      {'name': 'Street Art Experience', 'date': '2024-11-18', 'time': '2:00 PM', 'price': '\$30'}
    ],
    'Baltimore, MD': [
      {'name': 'Harbor Jazz Night', 'date': '2024-11-10', 'time': '7:00 PM', 'price': '\$35'},
      {'name': 'Crab Fest', 'date': '2024-11-12', 'time': '1:00 PM', 'price': 'Free'},
      {'name': 'Waterfront Art Walk', 'date': '2024-11-17', 'time': '9:00 AM', 'price': '\$20'}
    ],
    'Milwaukee, WI': [
      {'name': 'Lakefront Music Fest', 'date': '2024-11-11', 'time': '5:00 PM', 'price': '\$25'},
      {'name': 'Food Truck Roundup', 'date': '2024-11-13', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'Gallery Night', 'date': '2024-11-18', 'time': '6:00 PM', 'price': '\$15'}
    ],
    'Albuquerque, NM': [
      {'name': 'Balloon Music Fest', 'date': '2024-11-10', 'time': '6:00 PM', 'price': '\$30'},
      {'name': 'Street Food Fiesta', 'date': '2024-11-12', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'Desert Art Walk', 'date': '2024-11-15', 'time': '10:00 AM', 'price': '\$20'}
    ],
    'Tucson, AZ': [
      {'name': 'Desert Music Fest', 'date': '2024-11-11', 'time': '4:00 PM', 'price': '\$30'},
      {'name': 'Food & Drink Fair', 'date': '2024-11-14', 'time': '12:00 PM', 'price': 'Free'},
      {'name': 'Art Under the Stars', 'date': '2024-11-16', 'time': '9:00 AM', 'price': '\$20'}
]


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
