import 'package:flutter/material.dart';
import 'EventDetailsScreen.dart';

class EventsScreen extends StatelessWidget {
  final String location;

  EventsScreen({required this.location});

  final Map<String, List<Map<String, String>>> eventsData = {
    'Atlanta, GA': [
    {'name': 'Día de los Muertos Festival', 'date': '2024-11-02', 'time': '12:00 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Chastain Park Arts Festival', 'date': '2024-11-02 to 2024-11-03', 'time': '10:00 AM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'The Cher Show', 'date': '2024-11-08 to 2024-11-09', 'time': '7:30 PM', 'price': 'Varies', 'description': "Placeholder"},
    {'name': 'Justin Timberlake Concert', 'date': '2024-11-16', 'time': '7:30 PM', 'price': '\$90+', 'description': "Placeholder"},
    {'name': 'Cirque du Soleil - Twas The Night Before', 'date': '2024-11-29 to 2024-12-15', 'time': 'Varies', 'price': 'Varies', 'description': "Placeholder"}
  ],
    'New York, NY': [
    {'name': 'New York Comedy Festival', 'date': '2024-11-03 to 2024-11-10', 'time': 'Various', 'price': '\$25+', 'description': "Placeholder"},
    {'name': 'Radio City Christmas Spectacular', 'date': '2024-11-08 onward', 'time': 'Various', 'price': '\$65+', 'description': "Placeholder"},
    {'name': 'NYC Autumn Wine & Food Festival', 'date': '2024-11-18', 'time': '12:00 PM', 'price': '\$40', 'description': "Placeholder"},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'Los Angeles, CA': [
    {'name': 'AFI Fest', 'date': '2024-11-06 to 2024-11-10', 'time': 'Various', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Los Angeles Auto Show', 'date': '2024-11-17 to 2024-11-26', 'time': '10:00 AM', 'price': '\$20+', 'description': "Placeholder"},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$45', 'description': "Placeholder"}
  ],
    'Chicago, IL': [
    {'name': 'Chicago Humanities Festival', 'date': '2024-11-01 to 2024-11-10', 'time': 'Various', 'price': 'Varies', 'description': "Placeholder"},
    {'name': 'Magnificent Mile Lights Festival', 'date': '2024-11-23', 'time': '5:30 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Christkindlmarket', 'date': '2024-11-16 to 2024-12-24', 'time': '11:00 AM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'Houston, TX': [
    {'name': 'Houston Cinema Arts Festival', 'date': '2024-11-07 to 2024-11-11', 'time': 'Various', 'price': 'Varies', 'description': "Placeholder"},
    {'name': 'Nutcracker Market', 'date': '2024-11-09 to 2024-11-12', 'time': '10:00 AM', 'price': '\$20', 'description': "Placeholder"},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'Phoenix, AZ': [
    {'name': 'Phoenix Film Festival Fall Showcase', 'date': '2024-11-08 to 2024-11-10', 'time': 'Various', 'price': 'Varies', 'description': "Placeholder"},
    {'name': 'ZooLights', 'date': '2024-11-23 to 2024-12-31', 'time': '5:30 PM', 'price': '\$30', 'description': "Placeholder"},
    {'name': 'Phoenix Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$40', 'description': "Placeholder"}
  ],
    'Philadelphia, PA': [
    {'name': 'Philadelphia Marathon', 'date': '2024-11-17 to 2024-11-19', 'time': '7:00 AM', 'price': 'Varies', 'description': "Placeholder"},
    {'name': 'Made in Philadelphia Holiday Market', 'date': '2024-11-18 to 2024-12-24', 'time': '11:00 AM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'San Antonio, TX': [
    {'name': 'Luminaria Contemporary Arts Festival', 'date': '2024-11-10', 'time': '6:00 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Holiday River Parade', 'date': '2024-11-24', 'time': '7:00 PM', 'price': '\$25', 'description': "Placeholder"},
    {'name': 'Ford Holiday Boat Caroling', 'date': '2024-11-27 to 2024-12-18', 'time': '6:00 PM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'San Diego, CA': [
    {'name': 'San Diego Bay Wine & Food Festival', 'date': '2024-11-13 to 2024-11-17', 'time': '12:00 PM', 'price': '\$75+', 'description': "Placeholder"},
    {'name': 'Surfin Santa Arrival', 'date': '2024-11-24', 'time': '1:00 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'December Nights', 'date': '2024-11-30 to 2024-12-01', 'time': '5:00 PM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'Dallas, TX': [
    {'name': 'Dallas Symphony Christmas Pops', 'date': '2024-11-24 to 2024-12-10', 'time': '7:30 PM', 'price': '\$40+', 'description': "Placeholder"},
    {'name': 'Texas Christkindl Market', 'date': '2024-11-17 to 2024-12-23', 'time': '11:00 AM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Placeholder"}
  ],
    'Austin, TX': [
    {'name': 'Austin Food & Wine Festival', 'date': '2024-11-04 to 2024-11-06', 'time': '11:00 AM', 'price': '\$150', 'description': "Placeholder"},
    {'name': 'Blue Genie Art Bazaar', 'date': '2024-11-17 to 2024-12-24', 'time': '10:00 AM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Turkey Trot', 'date': '2024-11-28', 'time': '9:30 AM', 'price': '\$25', 'description': "Placeholder"}
  ],
    'Jacksonville, FL': [
    {'name': 'Jacksonville Fair', 'date': '2024-11-01 to 2024-11-12', 'time': '3:00 PM', 'price': '\$10', 'description': "Placeholder"},
    {'name': 'Veterans Day Parade', 'date': '2024-11-11', 'time': '11:01 AM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Holiday Market', 'date': '2024-11-25', 'time': '10:00 AM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'Columbus, OH': [
    {'name': 'Ohio State vs Michigan Game', 'date': '2024-11-25', 'time': '12:00 PM', 'price': 'Varies', 'description': "Placeholder"},
    {'name': 'Franklin Park Holiday Festival', 'date': '2024-11-29', 'time': '5:00 PM', 'price': '\$15', 'description': "Placeholder"},
    {'name': 'WinterFest at Bicentennial Park', 'date': '2024-11-30', 'time': '11:00 AM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'Indianapolis, IN': [
    {'name': 'Circle of Lights', 'date': '2024-11-24', 'time': '6:00 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Christmas Gift & Hobby Show', 'date': '2024-11-09 to 2024-11-13', 'time': '10:00 AM', 'price': '\$14', 'description': "Placeholder"},
    {'name': 'Turkey Trot', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$25', 'description': "Placeholder"}
  ],
    'Fort Worth, TX': [
    {'name': 'Fort Worth Stockyards Rodeo', 'date': '2024-11-03', 'time': '7:30 PM', 'price': '\$20+', 'description': "Placeholder"},
    {'name': 'Fort Worth Festival of Lights', 'date': '2024-11-23', 'time': '6:00 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Placeholder"} 
  ],
    'Charlotte, NC': [
    {'name': 'Carolina Renaissance Festival', 'date': '2024-11-04 to 2024-11-12', 'time': '10:00 AM', 'price': '\$32', 'description': "Placeholder"},
    {'name': 'Speedway Christmas', 'date': '2024-11-24 to 2024-12-31', 'time': '6:00 PM', 'price': '\$25', 'description': "Placeholder"},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-23', 'time': '9:00 AM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'San Francisco, CA': [
    {'name': 'Illuminate SF Festival of Light', 'date': '2024-11-10 to 2024-12-31', 'time': '6:00 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Holiday Ice Rink at Embarcadero', 'date': '2024-11-01 to 2024-01-07', 'time': '10:00 AM', 'price': '\$18', 'description': "Placeholder"},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-23', 'time': '8:00 AM', 'price': '\$35', 'description': "Placeholder"}
  ],
    'Seattle, WA': [
    {'name': 'Seattle International Comedy Competition', 'date': '2024-11-04 to 2024-11-25', 'time': 'Various', 'price': '\$25+', 'description': "Placeholder"},
    {'name': 'WildLights at Woodland Park Zoo', 'date': '2024-11-24 to 2024-12-31', 'time': '5:30 PM', 'price': '\$17', 'description': "Placeholder"},
    {'name': 'Macy’s Holiday Parade', 'date': '2024-11-24', 'time': '9:00 AM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'Denver, CO': [
    {'name': 'Denver Film Festival', 'date': '2024-11-02 to 2024-11-12', 'time': 'Various', 'price': 'Varies', 'description': "Placeholder"},
    {'name': 'Parade of Lights', 'date': '2024-11-25', 'time': '6:00 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Blossoms of Light', 'date': '2024-11-24 to 2024-01-01', 'time': '5:00 PM', 'price': '\$16', 'description': "Placeholder"}
  ],
    'Boston, MA': [
    {'name': 'Boston Comedy Festival', 'date': '2024-11-04 to 2024-11-10', 'time': 'Various', 'price': '\$30+', 'description': "Placeholder"},
    {'name': 'Boston International Kids Film Festival', 'date': '2024-11-03 to 2024-11-05', 'time': '10:00 AM', 'price': '\$15', 'description': "Placeholder"},
    {'name': 'Harvard Square Holiday Fair', 'date': '2024-11-24 to 2024-12-31', 'time': '11:00 AM', 'price': 'Free', 'description': "Placeholder"}
  ],
    'Nashville, TN': [
    {'name': 'Christmas Village', 'date': '2024-11-09 to 2024-11-11', 'time': '10:00 AM', 'price': '\$10', 'description': "Placeholder"},
    {'name': 'Holiday LIGHTS at Cheekwood', 'date': '2024-11-23 to 2024-12-31', 'time': '5:00 PM', 'price': '\$26', 'description': "Placeholder"},
    {'name': 'Nashville Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$40', 'description': "Placeholder"}
  ],
    'Detroit, MI': [
    {'name': 'Detroit Tree Lighting Ceremony', 'date': '2024-11-17', 'time': '5:30 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'America’s Thanksgiving Parade', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Detroit Christmas WonderFest', 'date': '2024-11-30 to 2024-12-23', 'time': '5:00 PM', 'price': '\$20', 'description': "Placeholder"}
  ],
    'Oklahoma City, OK': [
    {'name': 'Holiday River Parade', 'date': '2024-11-09', 'time': '6:00 PM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Winter Shoppes at Myriad Gardens', 'date': '2024-11-24 to 2024-12-31', 'time': '10:00 AM', 'price': 'Free', 'description': "Placeholder"},
    {'name': 'Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$35', 'description': "Placeholder"}
  ],
    'Portland, OR': [
    {'name': 'Portland Book Festival', 'date': '2024-11-11', 'time': '9:00 AM', 'price': '\$15', 'description': "Placeholder"},
    {'name': 'ZooLights at Oregon Zoo', 'date': '2024-11-22 to 2024-01-05', 'time': '5:00 PM', 'price': '\$20', 'description': "Placeholder"},
    {'name': 'Portland Thanksgiving Dinner Cruise', 'date': '2024-11-28', 'time': '6:00 PM', 'price': '\$85', 'description': "Placeholder"}
  ],
    'Las Vegas, NV': [
    {'name': 'Las Vegas National Horse Show', 'date': '2024-11-15 to 2024-11-19', 'time': '9:00 AM', 'price': '\$20'},
    {'name': 'Fremont Street Thanksgiving Festival', 'date': '2024-11-24', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Las Vegas Turkey Trot', 'date': '2024-11-28', 'time': '7:30 AM', 'price': '\$45'}
  ],
    'Baltimore, MD': [
    {'name': 'Christmas Village in Baltimore', 'date': '2024-11-18 to 2024-12-24', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Holiday Parade of Boats', 'date': '2024-11-24', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$40'}
  ],
    'Milwaukee, WI': [
    {'name': 'Milwaukee Holiday Parade', 'date': '2024-11-18', 'time': '9:30 AM', 'price': 'Free'},
    {'name': 'Milwaukee Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30'},
    {'name': 'Festival of Trees', 'date': '2024-11-24 to 2024-12-30', 'time': '10:00 AM', 'price': '\$10'}
  ],
    'Albuquerque, NM': [
    {'name': 'Balloon Music Fest', 'date': '2024-11-10', 'time': '6:00 PM', 'price': '\$30'},
    {'name': 'Street Food Fiesta', 'date': '2024-11-12', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Desert Art Walk', 'date': '2024-11-15', 'time': '10:00 AM', 'price': '\$15'}
  ],
    'Tucson, AZ': [
    {'name': 'Tucson Celtic Festival', 'date': '2024-11-04 to 2024-11-06', 'time': '10:00 AM', 'price': '\$25'},
    {'name': 'Tucson Thanksgiving Festival', 'date': '2024-11-25', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Winter Street Fair', 'date': '2024-11-30 to 2024-12-02', 'time': '10:00 AM', 'price': 'Free'}
  ],
    'Fresno, CA': [
    {'name': 'Holiday Gift Show', 'date': '2024-11-04 to 2024-11-06', 'time': '10:00 AM', 'price': '\$10'},
    {'name': 'Fresno Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'},
    {'name': 'Winter Street Fair', 'date': '2024-11-30 to 2024-12-02', 'time': '10:00 AM', 'price': 'Free'}
  ],
    'Sacramento, CA': [
    {'name': 'Sacramento Harvest Festival', 'date': '2024-11-04', 'time': '10:00 AM', 'price': '\$12'},
    {'name': 'Old Sacramento Thanksgiving Market', 'date': '2024-11-18', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Sacramento Turkey Trot', 'date': '2024-11-23', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Kansas City, MO': [
    {'name': 'Kansas City Renaissance Festival', 'date': '2024-11-05 to 2024-11-12', 'time': '10:00 AM', 'price': '\$15'},
    {'name': 'Plaza Lighting Ceremony', 'date': '2024-11-23', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Kansas City Thanksgiving 5K', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30'}
  ],
    'Mesa, AZ': [
    {'name': 'Mesa Arts Festival', 'date': '2024-11-08', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Mesa Thanksgiving Feastival', 'date': '2024-11-25', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Mesa Holiday Lighting', 'date': '2024-11-30', 'time': '6:00 PM', 'price': 'Free'}
  ],
    'Omaha, NE': [
    {'name': 'Omaha Holiday Lights Festival', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-23', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Omaha Turkey Trot', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$35'}
  ],
    'Miami, FL': [
    {'name': 'Miami Food Festival', 'date': '2024-11-05', 'time': '12:00 PM', 'price': '\$20'},
    {'name': 'Art Basel Miami Beach', 'date': '2024-11-30 to 2024-12-03', 'time': '9:00 AM', 'price': 'Varies'},
    {'name': 'Thanksgiving Turkey Trot Miami', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$40'}
  ],
    'Long Beach, CA': [
    {'name': 'Long Beach Harvest Fest', 'date': '2024-11-04', 'time': '11:00 AM', 'price': '\$10'},
    {'name': 'Holiday Boat Parade', 'date': '2024-11-30', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Long Beach', 'date': '2024-11-28', 'time': '7:00 AM', 'price': '\$35'}
  ],
    'Virginia Beach, VA': [
    {'name': 'Virginia Beach Fall Fest', 'date': '2024-11-02', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Holiday Parade at the Beach', 'date': '2024-11-25', 'time': '5:30 PM', 'price': 'Free'},
    {'name': 'Turkey Trot 5K Virginia Beach', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30'}
  ],
    'Oakland, CA': [
    {'name': 'Oakland Wine Festival', 'date': '2024-11-04', 'time': '1:00 PM', 'price': '\$40'},
    {'name': 'Jack London Square Lights Festival', 'date': '2024-11-24', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Oakland', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$35'}
  ],
    'Minneapolis, MN': [
    {'name': 'Minneapolis Holiday Market', 'date': '2024-11-01 to 2024-11-24', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Minneapolis Tree Lighting Ceremony', 'date': '2024-11-25', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Day Walk/Run', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30'}
  ],
    'Tulsa, OK': [
    {'name': 'Tulsa WinterFest', 'date': '2024-11-24 to 2024-12-31', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Thanksgiving Craft Market', 'date': '2024-11-19', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Turkey Trot Tulsa', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25'}
  ],
    'Birmingham, AL': [
    {'name': 'Birmingham Greek Festival', 'date': '2024-11-02', 'time': '10:00 AM', 'price': '\$5'},
    {'name': 'Birmingham Christmas Village', 'date': '2024-11-23', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Turkey Day 5K Birmingham', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Montgomery, AL': [
    {'name': 'Montgomery Fall Festival', 'date': '2024-11-05', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Montgomery Parade of Lights', 'date': '2024-11-23', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Montgomery', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$25'}
  ],
    'Mobile, AL': [
    {'name': 'Mobile Bay Fest', 'date': '2024-11-02', 'time': '10:00 AM', 'price': '\$15'},
    {'name': 'Magic Christmas in Lights', 'date': '2024-11-23 to 2024-12-31', 'time': '5:00 PM', 'price': '\$8'},
    {'name': 'Turkey Trot Mobile', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Huntsville, AL': [
    {'name': 'Rocket City Fall Festival', 'date': '2024-11-04', 'time': '10:00 AM', 'price': '\$5'},
    {'name': 'Huntsville Tree Lighting', 'date': '2024-11-18', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Huntsville', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Tuscaloosa, AL': [
    {'name': 'Tuscaloosa Arts Fest', 'date': '2024-11-10', 'time': '10:00 AM', 'price': '\$7'},
    {'name': 'Tuscaloosa Winter Wonderland', 'date': '2024-11-23', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20'}
  ],
    'Anchorage, AK': [
    {'name': 'Anchorage Winter Arts Fair', 'date': '2024-11-12', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Anchorage Holiday Lights Parade', 'date': '2024-11-25', 'time': '5:30 PM', 'price': 'Free'},
    {'name': 'Anchorage Turkey Trot', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$35'}
  ],
    'Fairbanks, AK': [
    {'name': 'Fairbanks Holiday Bazaar', 'date': '2024-11-05', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Ice Carving Exhibition', 'date': '2024-11-22 to 2024-11-24', 'time': '12:00 PM', 'price': '\$20'},
    {'name': 'Fairbanks Turkey Trot', 'date': '2024-11-22 to 2024-11-24', 'time': '12:00 PM', 'price': '\$20'}
  ],
    'Juneau, AK': [
    {'name': 'Juneau Winter Arts Festival', 'date': '2024-11-09', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Juneau Thanksgiving Celebration', 'date': '2024-11-24', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Juneau', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25'}
  ],
    'Sitka, AK': [
    {'name': 'Sitka Winter Fest', 'date': '2024-11-15', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Sitka Christmas Market', 'date': '2024-11-30', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Sitka Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Ketchikan, AK': [
    {'name': 'Ketchikan Christmas Festival', 'date': '2024-11-02', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Ketchikan Winter Lights Parade', 'date': '2024-11-25', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Ketchikan Turkey Trot', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$30'}
  ],
    'Chandler, AZ': [
    {'name': 'Chandler Harvest Festival', 'date': '2024-11-10', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Chandler Christmas Market', 'date': '2024-11-29', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Chandler Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Glendale, AZ': [
    {'name': 'Glendale Glitter & Glow', 'date': '2024-11-30', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Glendale Thanksgiving Market', 'date': '2024-11-18', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Turkey Trot Glendale', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Scottsdale, AZ': [
    {'name': 'Scottsdale Fall Festival', 'date': '2024-11-05', 'time': '10:00 AM', 'price': '\$10'},
    {'name': 'Scottsdale Christmas Lights', 'date': '2024-11-30', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Scottsdale Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Gilbert, AZ': [
    {'name': 'Gilbert Harvest Festival', 'date': '2024-11-11', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Gilbert Christmas Festival', 'date': '2024-11-30', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Gilbert', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
  'Little Rock, AR': [
    {'name': 'Little Rock Harvest Fest', 'date': '2024-11-05', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Little Rock Food Truck Festival', 'date': '2024-11-15', 'time': '11:00 AM', 'price': '\$15'},
    {'name': 'Turkey Trot Little Rock', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20'}
  ],
    'Fort Smith, AR': [
    {'name': 'Fort Smith Fall Fest', 'date': '2024-11-07', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Fort Smith Art Walk', 'date': '2024-11-21', 'time': '5:00 PM', 'price': '\$10'},
    {'name': 'Thanksgiving Parade Fort Smith', 'date': '2024-11-27', 'time': '6:00 PM', 'price': 'Free'}
  ],
    'Fayetteville, AR': [
    {'name': 'Fayetteville Lights Festival', 'date': '2024-11-18', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Fayetteville Holiday Market', 'date': '2024-11-22', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Turkey Trot Fayetteville', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Springdale, AR': [
    {'name': 'Springdale Fall Carnival', 'date': '2024-11-12', 'time': '4:00 PM', 'price': 'Free'},
    {'name': 'Springdale Arts Fest', 'date': '2024-11-20', 'time': '1:00 PM', 'price': '\$10'},
    {'name': 'Thanksgiving 5K Springdale', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20'}
  ],
    'Jonesboro, AR': [
    {'name': 'Jonesboro Thanksgiving Market', 'date': '2024-11-16', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Jonesboro Night of Lights', 'date': '2024-11-23', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Jonesboro', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20'}
  ],
    'San Jose, CA': [
    {'name': 'San Jose Holiday Parade', 'date': '2024-11-24', 'time': '2:00 PM', 'price': 'Free'},
    {'name': 'San Jose Food Festival', 'date': '2024-11-12', 'time': '12:00 PM', 'price': '\$5'},
    {'name': 'San Jose Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30'}
  ],
    'Bakersfield, CA': [
    {'name': 'Bakersfield Thanksgiving Fest', 'date': '2024-11-17', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Bakersfield Lights Parade', 'date': '2024-11-29', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Bakersfield', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Anaheim, CA': [
    {'name': 'Anaheim Harvest Fair', 'date': '2024-11-04', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Anaheim Holiday Market', 'date': '2024-11-22', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Turkey Trot Anaheim', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Santa Ana, CA': [
    {'name': 'Santa Ana Fall Festival', 'date': '2024-11-03', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Santa Ana Arts & Crafts Fair', 'date': '2024-11-19', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Santa Ana Turkey Trot', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25'}
  ],
    'Aurora, CO': [
    {'name': 'Aurora Harvest Market', 'date': '2024-11-09', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Aurora Winter Wonderland', 'date': '2024-11-27', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Aurora', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30'}
  ],
    'Colorado Springs, CO': [
    {'name': 'Colorado Springs Fall Fest', 'date': '2024-11-11', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Colorado Springs Night Parade', 'date': '2024-11-26', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Colorado Springs', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20'}
  ],
    'Fort Collins, CO': [
    {'name': 'Fort Collins Holiday Market', 'date': '2024-11-15', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Fort Collins Lights Festival', 'date': '2024-11-20', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Fort Collins', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Lakewood, CO': [
    {'name': 'Lakewood Fall Fest', 'date': '2024-11-08', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Lakewood Christmas Market', 'date': '2024-11-23', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Lakewood', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
  'Bridgeport, CT': [
    {'name': 'Bridgeport Holiday Market', 'date': '2024-11-10', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Bridgeport Lights Festival', 'date': '2024-11-18', 'time': '5:00 PM', 'price': '\$10'},
    {'name': 'Thanksgiving Parade Bridgeport', 'date': '2024-11-23', 'time': '2:00 PM', 'price': 'Free'}  
  ],
    'New Haven, CT': [
    {'name': 'New Haven Art Fest', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'New Haven Fall Music Fest', 'date': '2024-11-19', 'time': '6:00 PM', 'price': '\$20'},
    {'name': 'Thanksgiving 5K New Haven', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Stamford, CT': [
    {'name': 'Stamford Holiday Lights', 'date': '2024-11-15', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Stamford Arts & Crafts Market', 'date': '2024-11-21', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Turkey Trot Stamford', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Hartford, CT': [
    {'name': 'Hartford Harvest Festival', 'date': '2024-11-09', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Hartford Christmas Village', 'date': '2024-11-25', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Hartford', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25'}
  ],
    'Waterbury, CT': [
    {'name': 'Waterbury Fall Fair', 'date': '2024-11-08', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Waterbury Night of Lights', 'date': '2024-11-20', 'time': '5:00 PM', 'price': '\$10'},
    {'name': 'Thanksgiving 5K Waterbury', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$15'}
  ],
    'Wilmington, DE': [
    {'name': 'Wilmington Art & Wine Walk', 'date': '2024-11-14', 'time': '3:00 PM', 'price': '\$20'},
    {'name': 'Wilmington Thanksgiving Parade', 'date': '2024-11-24', 'time': '2:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Wilmington', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25'}
  ],
    'Dover, DE': [
    {'name': 'Dover Fall Festival', 'date': '2024-11-06', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Dover Holiday Craft Show', 'date': '2024-11-22', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Turkey Trot Dover', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Newark, DE': [
    {'name': 'Newark Lights Festival', 'date': '2024-11-11', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Newark Art Walk', 'date': '2024-11-17', 'time': '1:00 PM', 'price': '\$10'},
    {'name': 'Thanksgiving 5K Newark', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Middletown, DE': [
    {'name': 'Middletown Harvest Fest', 'date': '2024-11-13', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Middletown Night Market', 'date': '2024-11-19', 'time': '4:00 PM', 'price': '\$15'},
    {'name': 'Turkey Trot Middletown', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20'}
  ],
    'Smyrna, DE': [
    {'name': 'Smyrna Fall Carnival', 'date': '2024-11-05', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Smyrna Winter Wonderland', 'date': '2024-11-26', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving 5K Smyrna', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$15'}
  ],
    'Tampa, FL': [
    {'name': 'Tampa Bay Holiday Market', 'date': '2024-11-10', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Tampa Art Fest', 'date': '2024-11-18', 'time': '1:00 PM', 'price': '\$10'},
    {'name': 'Turkey Trot Tampa', 'date': '2024-11-28', 'time': '7:30 AM', 'price': '\$30'}
  ],
    'Orlando, FL': [
    {'name': 'Orlando Fall Carnival', 'date': '2024-11-08', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Orlando Thanksgiving Parade', 'date': '2024-11-22', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Orlando', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'St. Petersburg, FL': [
    {'name': 'St. Petersburg Music Fest', 'date': '2024-11-07', 'time': '3:00 PM', 'price': '\$20'},
    {'name': 'St. Pete Night Market', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot St. Petersburg', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30'}
  ],
    'Hialeah, FL': [
    {'name': 'Hialeah Cultural Fair', 'date': '2024-11-05', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Hialeah Fall Festival', 'date': '2024-11-17', 'time': '2:00 PM', 'price': '\$10'},
    {'name': 'Turkey Trot Hialeah', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20'}
  ],
    'Tallahassee, FL': [
    {'name': 'Tallahassee Harvest Fest', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Tallahassee Holiday Market', 'date': '2024-11-23', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Turkey Trot Tallahassee', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Fort Lauderdale, FL': [
    {'name': 'Fort Lauderdale Art Fair', 'date': '2024-11-14', 'time': '12:00 PM', 'price': '\$15'},
    {'name': 'Fort Lauderdale Food Fest', 'date': '2024-11-19', 'time': '6:00 PM', 'price': '\$5'},
    {'name': 'Turkey Trot Fort Lauderdale', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Port St. Lucie, FL': [
    {'name': 'Port St. Lucie Holiday Market', 'date': '2024-11-06', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Port St. Lucie Winter Festival', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Turkey Trot Port St. Lucie', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
  'Augusta, GA': [
    {'name': 'Augusta Canal Moonlight Paddle', 'date': '2024-11-12', 'time': '7:00 PM', 'price': '\$35'},
    {'name': 'Jazz in the Garden', 'date': '2024-11-17', 'time': '4:00 PM', 'price': 'Free'},
    {'name': 'Augusta Holiday Market', 'date': '2024-11-25', 'time': '10:00 AM', 'price': 'Free'}
  ],
    'Columbus, GA': [
    {'name': 'Columbus RiverFest', 'date': '2024-11-09', 'time': '1:00 PM', 'price': 'Free'},
    {'name': 'History Walking Tour', 'date': '2024-11-18', 'time': '10:00 AM', 'price': '\$10'},
    {'name': 'Columbus Holiday Parade', 'date': '2024-11-23', 'time': '3:00 PM', 'price': 'Free'}
  ],
    'Macon, GA': [
    {'name': 'Macon Lights & Music Show', 'date': '2024-11-14', 'time': '6:00 PM', 'price': '\$5'},
    {'name': 'Macon Film Festival', 'date': '2024-11-20', 'time': '7:00 PM', 'price': '\$15'},
    {'name': 'Thanksgiving Potluck in the Park', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Savannah, GA': [
    {'name': 'Savannah Food and Wine Fest', 'date': '2024-11-05', 'time': '12:00 PM', 'price': '\$50'},
    {'name': 'Ghosts of Savannah Tour', 'date': '2024-11-15', 'time': '8:00 PM', 'price': '\$20'},
    {'name': 'River Street Art Walk', 'date': '2024-11-28', 'time': '10:00 AM', 'price': 'Free'}
  ],
    'Honolulu, HI': [
    {'name': 'Honolulu Marathon Expo', 'date': '2024-11-07', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Honolulu Night Market', 'date': '2024-11-18', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Luau', 'date': '2024-11-28', 'time': '5:30 PM', 'price': '\$45'}
  ],
    'Hilo, HI': [
    {'name': 'Hilo Art & Craft Fair', 'date': '2024-11-08', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Volcano Twilight Tour', 'date': '2024-11-14', 'time': '5:00 PM', 'price': '\$35'},
    {'name': 'Hilo Farmers Market Thanksgiving Special', 'date': '2024-11-27', 'time': '9:00 AM', 'price': 'Free'}
  ],
    'Kailua, HI': [
    {'name': 'Kailua Bay Kayak Adventure', 'date': '2024-11-12', 'time': '8:00 AM', 'price': '\$60'},
    {'name': 'Kailua Art Walk', 'date': '2024-11-20', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Surf & Turf', 'date': '2024-11-28', 'time': '12:00 PM', 'price': '\$45'}
  ],
    'Kaneohe, HI': [
    {'name': 'Kaneohe Botanical Garden Tour', 'date': '2024-11-15', 'time': '10:00 AM', 'price': '\$10'},
    {'name': 'Kaneohe Film Under the Stars', 'date': '2024-11-21', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Beach Yoga', 'date': '2024-11-28', 'time': '7:00 AM', 'price': '\$15'}
  ],
    'Waipahu, HI': [
    {'name': 'Waipahu Cultural Fest', 'date': '2024-11-09', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Waipahu Night Market', 'date': '2024-11-16', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Community Feast', 'date': '2024-11-28', 'time': '12:00 PM', 'price': '\$10'}
  ],
    'Boise, ID': [
    {'name': 'Boise Fall Harvest Market', 'date': '2024-11-11', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Boise Riverwalk Lights', 'date': '2024-11-18', 'time': '5:30 PM', 'price': 'Free'},
    {'name': 'Turkey Day 5K Boise', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Meridian, ID': [
    {'name': 'Meridian Autumn Arts Festival', 'date': '2024-11-06', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Meridian Fire & Ice Show', 'date': '2024-11-20', 'time': '7:00 PM', 'price': '\$10'},
    {'name': 'Thanksgiving Family Hike', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free'}
  ],
    'Nampa, ID': [
    {'name': 'Nampa Holiday Farmers Market', 'date': '2024-11-10', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Nampa Art & Wine Festival', 'date': '2024-11-15', 'time': '3:00 PM', 'price': '\$15'},
    {'name': 'Turkey Trot Nampa', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Idaho Falls, ID': [
    {'name': 'Idaho Falls Film Fest', 'date': '2024-11-05', 'time': '7:00 PM', 'price': '\$12'},
    {'name': 'Lights on the Riverwalk', 'date': '2024-11-22', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Charity Run', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$10'}
  ],
    'Pocatello, ID': [
    {'name': 'Pocatello Pumpkin Fest', 'date': '2024-11-07', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Pocatello Night Market', 'date': '2024-11-17', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Turkey Day 5K Pocatello', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$15'}
  ],
    'Aurora, IL': [
    {'name': 'Aurora Light Up Night', 'date': '2024-11-11', 'time': '5:30 PM', 'price': 'Free'},
    {'name': 'Aurora Art Fair', 'date': '2024-11-16', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Turkey Trot Aurora', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Naperville, IL': [
    {'name': 'Naperville Holiday Craft Show', 'date': '2024-11-08', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Naperville Jazz Fest', 'date': '2024-11-14', 'time': '6:00 PM', 'price': '\$15'},
    {'name': 'Thanksgiving Parade Naperville', 'date': '2024-11-28', 'time': '10:00 AM', 'price': 'Free'}
  ],
    'Joliet, IL': [
    {'name': 'Joliet Vintage Market', 'date': '2024-11-13', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Joliet Fest of Lights', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Turkey Day Run Joliet', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$15'}
  ],
  'Rockford, IL': [
    {'name': 'Rockford Winter Market', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Rockford Film Festival', 'date': '2024-11-15', 'time': '7:00 PM', 'price': '\$12'},
    {'name': 'Thanksgiving Dinner Cruise', 'date': '2024-11-25', 'time': '5:30 PM', 'price': '\$45'}
  ],
    'Sprigfield, IL': [
    {'name': 'Springfield Arts & Crafts Fair', 'date': '2024-11-05', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Springfield Historical Walk', 'date': '2024-11-14', 'time': '3:00 PM', 'price': '\$10'},
    {'name': 'Winter Wonderland Gala', 'date': '2024-11-30', 'time': '6:00 PM', 'price': '\$50'}
  ],
    'Fort Wayne, IN': [
    {'name': 'Fort Wayne Children’s Zoo Winter Wonderland', 'date': '2024-11-15', 'time': '5:00 PM', 'price': '\$10'},
    {'name': 'Fort Wayne Craft Beer Festival', 'date': '2024-11-18', 'time': '6:00 PM', 'price': '\$30'},
    {'name': 'Thanksgiving Community Feast', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Evansville, IN': [
    {'name': 'Evansville Christmas Parade', 'date': '2024-11-21', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Evansville Arts on the River', 'date': '2024-11-26', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Thanksgiving Wine & Dine', 'date': '2024-11-28', 'time': '7:00 PM', 'price': '\$40'}
  ],
    'South Bend, IN': [
    {'name': 'South Bend Chocolate Festival', 'date': '2024-11-08', 'time': '11:00 AM', 'price': '\$15'},
    {'name': 'South Bend Winter Art Walk', 'date': '2024-11-20', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Cooking Class', 'date': '2024-11-24', 'time': '2:00 PM', 'price': '\$35'}
  ],
    'Carmel, IN': [
    {'name': 'Carmel Farmers Market Holiday Edition', 'date': '2024-11-09', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Carmel Winter Festival', 'date': '2024-11-15', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Wine Pairing Dinner', 'date': '2024-11-26', 'time': '7:00 PM', 'price': '\$60'}
  ],
    'Des Moines, IA': [
    {'name': 'Des Moines Art Festival', 'date': '2024-11-04', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Des Moines Thanksgiving Market', 'date': '2024-11-18', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Des Moines Holiday Lights Festival', 'date': '2024-11-29', 'time': '6:00 PM', 'price': 'Free'}
  ],
    'Cedar Rapids, IA': [
    {'name': 'Cedar Rapids History Museum Holiday Open House', 'date': '2024-11-10', 'time': '1:00 PM', 'price': 'Free'},
    {'name': 'Cedar Rapids Community Theatre Production', 'date': '2024-11-14', 'time': '7:30 PM', 'price': '\$20'},
    {'name': 'Thanksgiving Potluck', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free'}
  ],
    'Davenport, IA': [
    {'name': 'Davenport Christmas Market', 'date': '2024-11-11', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Davenport Holiday Lights Parade', 'date': '2024-11-22', 'time': '5:30 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Yoga Retreat', 'date': '2024-11-24', 'time': '9:00 AM', 'price': '\$25'}
  ],
    'S Sioux City, IA': [
    {'name': 'Sioux City Festival of Trees', 'date': '2024-11-01', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Sioux City Art Walk', 'date': '2024-11-16', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Family Fun Day', 'date': '2024-11-28', 'time': '1:00 PM', 'price': '\$10'}
  ],
    'Waterloo, IA': [
    {'name': 'Waterloo Oktoberfest', 'date': '2024-11-02', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Waterloo Winter Wonderland', 'date': '2024-11-21', 'time': '4:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Cooking Workshop', 'date': '2024-11-24', 'time': '3:00 PM', 'price': '\$20'}
  ],
    'Wichita, KS': [
    {'name': 'Wichita River Festival', 'date': '2024-11-07', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Wichita Winter Art Fair', 'date': '2024-11-15', 'time': '10:00 AM', 'price': '\$5'},
    {'name': 'Thanksgiving Dinner in the Park', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free'}
  ],
    'Overland Park, KS': [
    {'name': 'Overland Park Fall Festival', 'date': '2024-11-10', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Overland Park Arts in the Park', 'date': '2024-11-19', 'time': '4:00 PM', 'price': '\$10'},
    {'name': 'Thanksgiving Celebration Concert', 'date': '2024-11-27', 'time': '7:00 PM', 'price': '\$15'}
  ],
    'Olathe, KS': [
    {'name': 'Olathe Holiday Market', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Olathe Community Theatre Performance', 'date': '2024-11-17', 'time': '2:00 PM', 'price': '\$12'},
    {'name': 'Thanksgiving Charity Run', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20'}
  ],
    'Topeka, KS': [
    {'name': 'Topeka Arts Fest', 'date': '2024-11-04', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Topeka Thanksgiving Celebration', 'date': '2024-11-20', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Topeka Winter Concert', 'date': '2024-11-29', 'time': '7:00 PM', 'price': '\$15'}
  ],
  'Louisville, KY': [
    {'name': 'Louisville International Festival of Film', 'date': '2024-11-05', 'time': '6:00 PM', 'price': '\$15'},
    {'name': 'Thunder Over Louisville', 'date': '2024-11-12', 'time': '7:00 PM', 'price': 'Free'},
    {'name': 'Louisville Holiday Market', 'date': '2024-11-18', 'time': '10:00 AM', 'price': 'Free'}
  ],
    'Lexington, KY': [
    {'name': 'Lexington Craft Beer Fest', 'date': '2024-11-10', 'time': '2:00 PM', 'price': '\$20'},
    {'name': 'Lexington Art League Holiday Showcase', 'date': '2024-11-15', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Lexington Thanksgiving Gala', 'date': '2024-11-23', 'time': '6:00 PM', 'price': '\$50'}
  ],
    'Bowling Green, KY': [
    {'name': 'Bowling Green Hot Rods Baseball Banquet', 'date': '2024-11-01', 'time': '7:00 PM', 'price': '\$25'},
    {'name': 'Bowling Green Christmas Parade', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Potluck Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Owensboro, KY': [
    {'name': 'Owensboro Music Festival', 'date': '2024-11-06', 'time': '5:00 PM', 'price': '\$10'},
    {'name': 'Owensboro Christmas in the Park', 'date': '2024-11-16', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Family Festival', 'date': '2024-11-24', 'time': '12:00 PM', 'price': 'Free'}
  ],
    'Covington, KY': [
    {'name': 'Covington Arts & Music Festival', 'date': '2024-11-03', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Covington Holiday Walk', 'date': '2024-11-15', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Thanksgiving Cooking Class', 'date': '2024-11-25', 'time': '2:00 PM', 'price': '\$30'}
  ],
    'New Orleans, LA': [
    {'name': 'New Orleans Jazz & Heritage Festival', 'date': '2024-11-09', 'time': '10:00 AM', 'price': '\$75'},
    {'name': 'New Orleans French Market Holiday Festival', 'date': '2024-11-19', 'time': '5:00 PM', 'price': 'Free'},
    {'name': "Thanksgiving Feast at Commander's Palace", 'date': '2024-11-28', 'time': '12:00 PM', 'price': '\$75'}
  ],
  'Baton Rouge, LA': [
    {'name': 'Baton Rouge Jazz & Heritage Festival', 'date': '2024-11-05', 'time': '10:00 AM', 'price': '\$15'},
    {'name': 'Baton Rouge Thanksgiving Parade', 'date': '2024-11-18', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Baton Rouge Holiday Food Drive', 'date': '2024-11-25', 'time': '9:00 AM', 'price': 'Free'}
  ],
    'Shreveport, LA': [
    {'name': 'Shreveport Film Festival', 'date': '2024-11-10', 'time': '1:00 PM', 'price': '\$12'},
    {'name': 'Shreveport Christmas Market', 'date': '2024-11-22', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Shreveport Thanksgiving Potluck', 'date': '2024-11-28', 'time': '2:00 PM', 'price': 'Free'}
  ],
    'Lafayette, LA': [
    {'name': 'Lafayette Cajun & Creole Festival', 'date': '2024-11-03', 'time': '11:00 AM', 'price': '\$20'},
    {'name': 'Lafayette Winter Wonderland', 'date': '2024-11-15', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Lafayette Community Thanksgiving Dinner', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Lake Charles, LA': [
    {'name': 'Lake Charles Historic Home Tour', 'date': '2024-11-06', 'time': '5:00 PM', 'price': '\$15'},
    {'name': 'Lake Charles Holiday Festival', 'date': '2024-11-20', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Lake Charles Thanksgiving Run', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25'}
  ],
    'Portland, ME': [
    {'name': 'Portland Food Festival', 'date': '2024-11-02', 'time': '11:00 AM', 'price': '\$5'},
    {'name': 'Portland Winter Fest', 'date': '2024-11-10', 'time': '4:00 PM', 'price': 'Free'},
    {'name': 'Portland Community Thanksgiving', 'date': '2024-11-26', 'time': '12:00 PM', 'price': 'Free'}
  ],
    'Lewiston, ME': [
    {'name': 'Lewiston Winter Carnival', 'date': '2024-11-04', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Lewiston Arts & Crafts Fair', 'date': '2024-11-12', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Lewiston Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Bangor, ME': [
    {'name': 'Bangor Film Festival', 'date': '2024-11-08', 'time': '7:00 PM', 'price': '\$10'},
    {'name': 'Bangor Holiday Celebration', 'date': '2024-11-15', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Bangor Thanksgiving Community Meal', 'date': '2024-11-27', 'time': '2:00 PM', 'price': 'Free'}
  ],
    'South Portland, ME': [
    {'name': 'South Portland Harvest Festival', 'date': '2024-11-01', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'South Portland Holiday Bazaar', 'date': '2024-11-18', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'South Portland Thanksgiving Gala', 'date': '2024-11-26', 'time': '6:00 PM', 'price': '\$30'}
  ],
    'Auburn, ME': [
    {'name': 'Auburn Music in the Park', 'date': '2024-11-05', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Auburn Christmas Market', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Auburn Thanksgiving Community Feast', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Frederick, MD': [
    {'name': 'Frederick Arts Festival', 'date': '2024-11-09', 'time': '11:00 AM', 'price': '\$10'},
    {'name': 'Frederick Holiday Market', 'date': '2024-11-16', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Frederick Community Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Rockville, MD': [
    {'name': 'Rockville Science Day', 'date': '2024-11-03', 'time': '1:00 PM', 'price': 'Free'},
    {'name': 'Rockville Holiday Concert', 'date': '2024-11-14', 'time': '7:00 PM', 'price': '\$15'},
    {'name': 'Rockville Thanksgiving Community Meal', 'date': '2024-11-25', 'time': '3:00 PM', 'price': 'Free'}
  ],
    'Gaithersburg, MD': [
    {'name': 'Gaithersburg Music Festival', 'date': '2024-11-06', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Gaithersburg Arts & Crafts Show', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Gaithersburg Thanksgiving Celebration', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free'}
  ],
    'Bowie, MD': [
    {'name': 'Bowie Heritage Day', 'date': '2024-11-10', 'time': '12:00 PM', 'price': 'Free'},
    {'name': 'Bowie Holiday Arts & Crafts Fair', 'date': '2024-11-20', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Bowie Thanksgiving Potluck', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free'}
  ],
  'Worcester, MA': [
    {'name': 'Worcester Music Festival', 'date': '2024-11-02', 'time': '5:00 PM', 'price': '\$10'},
    {'name': 'Worcester Art in the Park', 'date': '2024-11-08', 'time': '1:00 PM', 'price': 'Free'},
    {'name': 'Worcester Thanksgiving Food Drive', 'date': '2024-11-20', 'time': '10:00 AM', 'price': 'Free'}
  ],
    'Springfield, MA': [
    {'name': 'Springfield Jazz & Roots Festival', 'date': '2024-11-01', 'time': '4:00 PM', 'price': '\$12'},
    {'name': 'Springfield Holiday Parade', 'date': '2024-11-16', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Springfield Community Thanksgiving Feast', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Lowell, MA': [
    {'name': 'Lowell Folk Festival', 'date': '2024-11-03', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Lowell Holiday Festival', 'date': '2024-11-14', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Lowell Thanksgiving Community Dinner', 'date': '2024-11-27', 'time': '2:00 PM', 'price': 'Free'}
  ],
    'Cambridge, MA': [
    {'name': 'Cambridge Science Festival', 'date': '2024-11-05', 'time': '3:00 PM', 'price': '\$8'},
    {'name': 'Cambridge Winter Market', 'date': '2024-11-11', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Cambridge Thanksgiving Celebration', 'date': '2024-11-25', 'time': '12:00 PM', 'price': 'Free'}
  ],
    'Grand Rapids, MI': [
    {'name': 'Grand Rapids ArtPrize', 'date': '2024-11-07', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Grand Rapids Holiday Market', 'date': '2024-11-20', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Grand Rapids Thanksgiving Feast', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Warren, MI': [
    {'name': 'Warren Historical Society Event', 'date': '2024-11-04', 'time': '5:00 PM', 'price': '\$10'},
    {'name': 'Warren Winter Festival', 'date': '2024-11-15', 'time': '3:00 PM', 'price': 'Free'},
    {'name': 'Warren Thanksgiving Dinner', 'date': '2024-11-26', 'time': '2:00 PM', 'price': 'Free'}
  ],
    'Sterling Heights, MI': [
    {'name': 'Sterling Heights Music Festival', 'date': '2024-11-09', 'time': '6:00 PM', 'price': '\$5'},
    {'name': 'Sterling Heights Holiday Craft Show', 'date': '2024-11-17', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Sterling Heights Community Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Lansing, MI': [
    {'name': 'Lansing Art Gallery Show', 'date': '2024-11-06', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Lansing Holiday Light Parade', 'date': '2024-11-21', 'time': '7:00 PM', 'price': 'Free'},
    {'name': 'Lansing Thanksgiving Community Meal', 'date': '2024-11-27', 'time': '12:00 PM', 'price': 'Free'}
  ],
    'Ann Arbor, MI': [
    {'name': 'Ann Arbor Film Festival', 'date': '2024-11-03', 'time': '1:00 PM', 'price': '\$10'},
    {'name': 'Ann Arbor Winter Fest', 'date': '2024-11-12', 'time': '4:00 PM', 'price': 'Free'},
    {'name': 'Ann Arbor Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
  'Saint Paul, MN': [
    {'name': 'Saint Paul Winter Carnival', 'date': '2024-11-09', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Saint Paul Art Crawl', 'date': '2024-11-14', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Saint Paul Thanksgiving Celebration', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Rochester, MN': [
    {'name': 'Rochester International Film Festival', 'date': '2024-11-02', 'time': '4:00 PM', 'price': '\$10'},
    {'name': 'Rochester Craft Beer Festival', 'date': '2024-11-11', 'time': '12:00 PM', 'price': '\$20'},
    {'name': 'Rochester Community Thanksgiving Dinner', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Duluth, MN': [
    {'name': 'Duluth Harvest Festival', 'date': '2024-11-03', 'time': '11:00 AM', 'price': 'Free'},
    {'name': 'Duluth Art and Wine Walk', 'date': '2024-11-08', 'time': '5:00 PM', 'price': '\$15'},
    {'name': 'Duluth Thanksgiving Feast', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free'}
  ],
    'Bloomington, MN': [
    {'name': 'Bloomington Winter Market', 'date': '2024-11-10', 'time': '9:00 AM', 'price': 'Free'},
    {'name': 'Bloomington Holiday Lights Festival', 'date': '2024-11-20', 'time': '6:00 PM', 'price': 'Free'},
    {'name': 'Bloomington Community Thanksgiving Dinner', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Jackson, MS': [
    {'name': 'Jackson Music Festival', 'date': '2024-11-05', 'time': '7:00 PM', 'price': '\$15'},
    {'name': 'Jackson Art in the Park', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Jackson Thanksgiving Community Meal', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Gulfport, MS': [
    {'name': 'Gulfport Seafood Festival', 'date': '2024-11-02', 'time': '12:00 PM', 'price': '\$5'},
    {'name': 'Gulfport Holiday Market', 'date': '2024-11-15', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Gulfport Community Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Southaven, MS': [
    {'name': 'Southaven Arts & Crafts Fair', 'date': '2024-11-09', 'time': '10:00 AM', 'price': 'Free'},
    {'name': 'Southaven Winter Wonderland', 'date': '2024-11-22', 'time': '5:00 PM', 'price': 'Free'},
    {'name': 'Southaven Thanksgiving Community Meal', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free'}
  ],
    'Biloxi, MS': [
    {'name': 'Biloxi Blues Festival', 'date': '2024-11-04', 'time': '3:00 PM', 'price': '\$10'},
    {'name': 'Biloxi Craft Beer Festival', 'date': '2024-11-16', 'time': '1:00 PM', 'price': '\$20'},
    {'name': 'Biloxi Thanksgiving Feast', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free'}
  ],
    'Hattiesburg, MS': [
    {'name': 'Hattiesburg Music and Arts Festival', 'date': '2024-11-07', 'time': '5:00 PM', 'price': '\$10'},
    {'name': 'Hattiesburg Holiday Celebration', 'date': '2024-11-21', 'time': '4:00 PM', 'price': 'Free'},
    {'name': 'Hattiesburg Community Thanksgiving Dinner', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free'}
  ]
  };

  @override
  Widget build(BuildContext context) {
    final events = eventsData[location] ?? [{'name': 'No events available', 'date': '', 'time': '', 'price': '', 'description': ''}];

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
                              eventDescription: event['description']!,               
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
