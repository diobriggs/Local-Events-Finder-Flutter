import 'package:flutter/material.dart';
import 'EventDetailsScreen.dart';

class EventsScreen extends StatelessWidget {
  final String location;

  EventsScreen({required this.location});

  final Map<String, List<Map<String, String>>> eventsData = {
    'Atlanta, GA': [
    {'name': 'Día de los Muertos Festival', 'date': '2024-11-02', 'time': '12:00 PM', 'price': 'Free', 'description': "Celebrate the Mexican tradition of Día de los Muertos with Atlanta’s vibrant community. Enjoy beautifully crafted altars, traditional food, live music, and cultural performances honoring loved ones who have passed away."},
    {'name': 'Chastain Park Arts Festival', 'date': '2024-11-02 to 2024-11-03', 'time': '10:00 AM', 'price': 'Free', 'description': "Held in the scenic Chastain Park, this arts festival showcases works from regional artists, along with live music, food trucks, and activities for families, making it a wonderful outing for art lovers of all ages."},
    {'name': 'The Cher Show', 'date': '2024-11-08 to 2024-11-09', 'time': '7:30 PM', 'price': 'Varies', 'description': "A dazzling musical capturing Cher's legendary life and career. From her early days to superstar fame, experience her story through iconic songs, glamorous costumes, and captivating performances."},
    {'name': 'Justin Timberlake Concert', 'date': '2024-11-16', 'time': '7:30 PM', 'price': '\$90+', 'description': "Join Justin Timberlake live in concert for an unforgettable night filled with energetic performances, soulful ballads, and hits from his chart-topping albums."},
    {'name': 'Cirque du Soleil - Twas The Night Before', 'date': '2024-11-29 to 2024-12-15', 'time': 'Varies', 'price': 'Varies', 'description': "This holiday-themed Cirque du Soleil performance brings acrobatics and heartwarming storytelling to life, creating a magical experience for the entire family."}
  ],
    'New York, NY': [
    {'name': 'New York Comedy Festival', 'date': '2024-11-03 to 2024-11-10', 'time': 'Various', 'price': '\$25+', 'description': 'Laugh along with top comedians at this week-long festival featuring stand-up, improv, and special shows at venues across the city. A must-attend for comedy fans!'},
    {'name': 'Radio City Christmas Spectacular', 'date': '2024-11-08 onward', 'time': 'Various', 'price': '\$65+', 'description': 'Experience the magic of the season at Radio City Music Hall with the world-famous Rockettes. This dazzling show combines high-energy dance, stunning visuals, and festive cheer.'},
    {'name': 'NYC Autumn Wine & Food Festival', 'date': '2024-11-18', 'time': '12:00 PM', 'price': '\$40', 'description': 'Indulge in fine wines and gourmet bites at this premier food and wine festival. Sample a wide selection of local and international wines and enjoy pairings from renowned chefs.'},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free', 'description': 'Join millions in celebrating this iconic holiday parade with massive balloons, lively floats, and special performances. It’s a beloved New York City tradition that kicks off the holiday season.'}
  ],
    'Los Angeles, CA': [
    {'name': 'AFI Fest', 'date': '2024-11-06 to 2024-11-10', 'time': 'Various', 'price': 'Free', 'description': 'The annual AFI Fest presents a showcase of the year’s best films, featuring screenings, premieres, and conversations with industry talent. A must for film enthusiasts!'},
    {'name': 'Los Angeles Auto Show', 'date': '2024-11-17 to 2024-11-26', 'time': '10:00 AM', 'price': '\$20+', 'description': 'Explore the latest car models, innovations, and cutting-edge automotive technology at this massive auto show. Great for car enthusiasts and families alike.'},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$45', 'description': 'Start Thanksgiving with a fun and family-friendly 5K and 10K race through the streets of Los Angeles. Participants enjoy festive costumes, activities, and post-race treats.'}
  ],
    'Chicago, IL': [
    {'name': 'Chicago Humanities Festival', 'date': '2024-11-01 to 2024-11-10', 'time': 'Various', 'price': 'Varies', 'description': "Join an inspiring celebration of ideas and culture at the Chicago Humanities Festival, featuring thought-provoking talks, performances, and discussions with prominent speakers from diverse fields."},
    {'name': 'Magnificent Mile Lights Festival', 'date': '2024-11-23', 'time': '5:30 PM', 'price': 'Free', 'description': "Kick off the holiday season at the Magnificent Mile Lights Festival, where the iconic shopping district sparkles with festive lights and features a spectacular parade."},
    {'name': 'Christkindlmarket', 'date': '2024-11-16 to 2024-12-24', 'time': '11:00 AM', 'price': 'Free', 'description': "Experience the charm of a traditional German holiday market at Christkindlmarket, filled with unique gifts, handmade crafts, and delicious seasonal treats."}
],
    'Houston, TX': [
    {'name': 'Houston Cinema Arts Festival', 'date': '2024-11-07 to 2024-11-11', 'time': 'Various', 'price': 'Varies', 'description': "Celebrate the art of cinema at the Houston Cinema Arts Festival, featuring an exciting lineup of films, discussions, and performances that highlight the diversity of the cinematic experience."},
    {'name': 'Nutcracker Market', 'date': '2024-11-09 to 2024-11-12', 'time': '10:00 AM', 'price': '\$20', 'description': "Discover a holiday shopping extravaganza at the Nutcracker Market, featuring hundreds of vendors offering unique gifts, seasonal decorations, and gourmet food."},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free', 'description': "Join the festive spirit at the Thanksgiving Day Parade, showcasing colorful floats, lively performances, and a joyful atmosphere that brings the community together."}
],
    'Phoenix, AZ': [
    {'name': 'Phoenix Film Festival Fall Showcase', 'date': '2024-11-08 to 2024-11-10', 'time': 'Various', 'price': 'Varies', 'description': "Experience a selection of innovative films at the Phoenix Film Festival Fall Showcase, featuring independent filmmakers and engaging discussions."},
    {'name': 'ZooLights', 'date': '2024-11-23 to 2024-12-31', 'time': '5:30 PM', 'price': '\$30', 'description': "Enjoy the festive magic of ZooLights, where the Phoenix Zoo is transformed into a dazzling display of lights, offering a family-friendly holiday experience."},
    {'name': 'Phoenix Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$40', 'description': "Join the fun at the Phoenix Turkey Trot, a spirited run/walk event that brings the community together for fitness and festivities on Thanksgiving morning."}
],
    'Philadelphia, PA': [
    {'name': 'Philadelphia Marathon', 'date': '2024-11-17 to 2024-11-19', 'time': '7:00 AM', 'price': 'Varies', 'description': "Join thousands of runners at the Philadelphia Marathon, a premier running event featuring a scenic course through the city's historic landmarks."},
    {'name': 'Made in Philadelphia Holiday Market', 'date': '2024-11-18 to 2024-12-24', 'time': '11:00 AM', 'price': 'Free', 'description': "Discover unique gifts and artisanal products at the Made in Philadelphia Holiday Market, celebrating local craftsmanship and holiday cheer."},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free', 'description': "Celebrate the season at the Thanksgiving Day Parade, featuring vibrant floats, lively performances, and a festive atmosphere in the heart of Philadelphia."}
],
    'San Antonio, TX': [
    {'name': 'Luminaria Contemporary Arts Festival', 'date': '2024-11-10', 'time': '6:00 PM', 'price': 'Free', 'description': "Experience the vibrant Luminaria Contemporary Arts Festival, showcasing a diverse array of visual and performing arts by local and national artists in a lively outdoor setting."},
    {'name': 'Holiday River Parade', 'date': '2024-11-24', 'time': '7:00 PM', 'price': '\$25', 'description': "Enjoy the dazzling Holiday River Parade, featuring beautifully decorated floats and festive entertainment as they glide down the San Antonio River, creating a magical holiday atmosphere."},
    {'name': 'Ford Holiday Boat Caroling', 'date': '2024-11-27 to 2024-12-18', 'time': '6:00 PM', 'price': 'Free', 'description': "Join in the festive spirit at the Ford Holiday Boat Caroling, where illuminated boats filled with carolers serenade guests along the river, spreading holiday cheer and joy."}
],
    'San Diego, CA': [
    {'name': 'San Diego Bay Wine & Food Festival', 'date': '2024-11-13 to 2024-11-17', 'time': '12:00 PM', 'price': '\$75+', 'description': "Indulge in culinary delights at the San Diego Bay Wine & Food Festival, featuring tastings from top chefs, wineries, and breweries, alongside cooking demonstrations and gourmet experiences."},
    {'name': 'Surfin Santa Arrival', 'date': '2024-11-24', 'time': '1:00 PM', 'price': 'Free', 'description': "Kick off the holiday season with the Surfin Santa Arrival, a fun-filled event featuring Santa arriving on a surfboard at the beach, complete with entertainment and festive activities."},
    {'name': 'December Nights', 'date': '2024-11-30 to 2024-12-01', 'time': '5:00 PM', 'price': 'Free', 'description': "Celebrate the holiday spirit at December Nights, an enchanting festival at Balboa Park featuring live music, food, and dazzling lights, making it a perfect family outing."}
],
    'Dallas, TX': [
    {'name': 'Dallas Symphony Christmas Pops', 'date': '2024-11-24 to 2024-12-10', 'time': '7:30 PM', 'price': '\$40+', 'description': "Enjoy the festive sounds of the season at the Dallas Symphony Christmas Pops, featuring beloved holiday classics performed by the renowned Dallas Symphony Orchestra."},
    {'name': 'Texas Christkindl Market', 'date': '2024-11-17 to 2024-12-23', 'time': '11:00 AM', 'price': 'Free', 'description': "Experience the magic of the holiday season at the Texas Christkindl Market, showcasing unique gifts, delicious food, and live entertainment in a festive outdoor setting."},
    {'name': 'Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Join the Dallas Turkey Trot, a fun and family-friendly run/walk event that brings the community together for fitness and celebration on Thanksgiving morning."}
],
    'Austin, TX': [
    {'name': 'Austin Food & Wine Festival', 'date': '2024-11-04 to 2024-11-06', 'time': '11:00 AM', 'price': '\$150', 'description': "Savor the flavors at the Austin Food & Wine Festival, where renowned chefs and winemakers come together for a weekend of tastings, cooking demonstrations, and exclusive culinary experiences."},
    {'name': 'Blue Genie Art Bazaar', 'date': '2024-11-17 to 2024-12-24', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop local at the Blue Genie Art Bazaar, a holiday market featuring handmade goods from Austin's talented artists and artisans, perfect for unique gifts."},
    {'name': 'Turkey Trot', 'date': '2024-11-28', 'time': '9:30 AM', 'price': '\$25', 'description': "Participate in the Austin Turkey Trot, a fun and festive run/walk event that brings the community together on Thanksgiving morning to promote health and holiday spirit."}
],
    'Jacksonville, FL': [
    {'name': 'Jacksonville Fair', 'date': '2024-11-01 to 2024-11-12', 'time': '3:00 PM', 'price': '\$10', 'description': "Enjoy the excitement of the Jacksonville Fair, featuring thrilling rides, delicious fair food, live entertainment, and a variety of exhibits for all ages."},
    {'name': 'Veterans Day Parade', 'date': '2024-11-11', 'time': '11:01 AM', 'price': 'Free', 'description': "Honor our heroes at the Veterans Day Parade, a community celebration featuring veterans, military units, and colorful floats to show appreciation for their service."},
    {'name': 'Holiday Market', 'date': '2024-11-25', 'time': '10:00 AM', 'price': 'Free', 'description': "Kick off the holiday season at the Holiday Market, where local artisans and vendors offer unique gifts, crafts, and seasonal treats in a festive atmosphere."}
],
    'Columbus, OH': [
    {'name': 'Ohio State vs Michigan Game', 'date': '2024-11-25', 'time': '12:00 PM', 'price': 'Varies', 'description': "Experience the excitement of college football at the Ohio State vs Michigan Game, a historic rivalry that brings fans together for an unforgettable showdown."},
    {'name': 'Franklin Park Holiday Festival', 'date': '2024-11-29', 'time': '5:00 PM', 'price': '\$15', 'description': "Celebrate the season at the Franklin Park Holiday Festival, featuring festive lights, holiday activities, and family-friendly entertainment in a beautiful park setting."},
    {'name': 'WinterFest at Bicentennial Park', 'date': '2024-11-30', 'time': '11:00 AM', 'price': 'Free', 'description': "Welcome the winter season at WinterFest at Bicentennial Park, offering a variety of fun activities, holiday displays, and live entertainment for all ages."}
],
    'Indianapolis, IN': [
    {'name': 'Circle of Lights', 'date': '2024-11-24', 'time': '6:00 PM', 'price': 'Free', 'description': "Join the festivities at the Circle of Lights, an annual event featuring a spectacular lighting ceremony, live entertainment, and holiday cheer in the heart of downtown."},
    {'name': 'Christmas Gift & Hobby Show', 'date': '2024-11-09 to 2024-11-13', 'time': '10:00 AM', 'price': '\$14', 'description': "Get into the holiday spirit at the Christmas Gift & Hobby Show, showcasing unique gifts, crafts, and hobby-related items, perfect for your seasonal shopping."},
    {'name': 'Turkey Trot', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$25', 'description': "Participate in the Indianapolis Turkey Trot, a fun and active way to start your Thanksgiving Day with family and friends while supporting local charities."}
],
    'Fort Worth, TX': [
    {'name': 'Fort Worth Stockyards Rodeo', 'date': '2024-11-03', 'time': '7:30 PM', 'price': '\$20+', 'description': "Experience the excitement of the Fort Worth Stockyards Rodeo, featuring thrilling rodeo events, live music, and a taste of the Wild West in this historic venue."},
    {'name': 'Fort Worth Festival of Lights', 'date': '2024-11-23', 'time': '6:00 PM', 'price': 'Free', 'description': "Kick off the holiday season at the Fort Worth Festival of Lights, an enchanting event filled with festive lights, entertainment, and family-friendly activities in the heart of downtown."},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Join the Fort Worth Thanksgiving Turkey Trot, a fun run that brings the community together to celebrate health, fitness, and the holiday spirit on Thanksgiving morning."}
],
    'Charlotte, NC': [
    {'name': 'Carolina Renaissance Festival', 'date': '2024-11-04 to 2024-11-12', 'time': '10:00 AM', 'price': '\$32', 'description': "Step back in time at the Carolina Renaissance Festival, featuring medieval entertainment, artisan crafts, delicious food, and interactive experiences for the whole family."},
    {'name': 'Speedway Christmas', 'date': '2024-11-24 to 2024-12-31', 'time': '6:00 PM', 'price': '\$25', 'description': "Enjoy the festive spirit at Speedway Christmas, a dazzling holiday light show with millions of lights, holiday attractions, and a beautiful display at Charlotte Motor Speedway."},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-23', 'time': '9:00 AM', 'price': 'Free', 'description': "Celebrate the season at the Thanksgiving Day Parade, featuring colorful floats, lively performances, and a joyful atmosphere in downtown Charlotte."}
],
    'San Francisco, CA': [
    {'name': 'Illuminate SF Festival of Light', 'date': '2024-11-10 to 2024-12-31', 'time': '6:00 PM', 'price': 'Free', 'description': "Experience the magic of the Illuminate SF Festival of Light, showcasing stunning light installations and art throughout the city, creating a festive atmosphere for all."},
    {'name': 'Holiday Ice Rink at Embarcadero', 'date': '2024-11-01 to 2024-01-07', 'time': '10:00 AM', 'price': '\$18', 'description': "Enjoy ice skating at the Holiday Ice Rink at Embarcadero, set against the backdrop of the beautiful San Francisco skyline, perfect for families and friends to celebrate the season."},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-23', 'time': '8:00 AM', 'price': '\$35', 'description': "Join the San Francisco Thanksgiving Turkey Trot, a fun and festive run that supports local charities while bringing the community together on Thanksgiving morning."}
],
    'Seattle, WA': [
    {'name': 'Seattle International Comedy Competition', 'date': '2024-11-04 to 2024-11-25', 'time': 'Various', 'price': '\$25+', 'description': "Laugh out loud at the Seattle International Comedy Competition, featuring talented comedians from across the country competing for the title in various venues around the city."},
    {'name': 'WildLights at Woodland Park Zoo', 'date': '2024-11-24 to 2024-12-31', 'time': '5:30 PM', 'price': '\$17', 'description': "Experience the wonder of WildLights at Woodland Park Zoo, where stunning light displays transform the zoo into a winter wonderland, featuring holiday-themed activities and festive treats."},
    {'name': 'Macy’s Holiday Parade', 'date': '2024-11-24', 'time': '9:00 AM', 'price': 'Free', 'description': "Kick off the holiday season at the Macy’s Holiday Parade, a festive celebration featuring floats, performances, and special appearances that fill the streets of downtown Seattle with cheer."}
],
    'Denver, CO': [
    {'name': 'Denver Film Festival', 'date': '2024-11-02 to 2024-11-12', 'time': 'Various', 'price': 'Varies', 'description': "Celebrate cinema at the Denver Film Festival, showcasing a diverse selection of films from around the world, featuring screenings, panels, and special events."},
    {'name': 'Parade of Lights', 'date': '2024-11-25', 'time': '6:00 PM', 'price': 'Free', 'description': "Join the magic of the Parade of Lights, a dazzling celebration featuring illuminated floats, marching bands, and festive performances through downtown Denver."},
    {'name': 'Blossoms of Light', 'date': '2024-11-24 to 2024-01-01', 'time': '5:00 PM', 'price': '\$16', 'description': "Experience the beauty of Blossoms of Light at the Denver Botanic Gardens, where stunning light displays and holiday decorations create a captivating winter wonderland."}
],
    'Boston, MA': [
    {'name': 'Boston Comedy Festival', 'date': '2024-11-04 to 2024-11-10', 'time': 'Various', 'price': '\$30+', 'description': "Enjoy a week of laughter at the Boston Comedy Festival, featuring performances by top comedians, showcases of emerging talent, and plenty of side-splitting entertainment."},
    {'name': 'Boston International Kids Film Festival', 'date': '2024-11-03 to 2024-11-05', 'time': '10:00 AM', 'price': '\$15', 'description': "Celebrate young filmmakers at the Boston International Kids Film Festival, showcasing a diverse range of films made by and for children, along with workshops and fun activities."},
    {'name': 'Harvard Square Holiday Fair', 'date': '2024-11-24 to 2024-12-31', 'time': '11:00 AM', 'price': 'Free', 'description': "Explore the Harvard Square Holiday Fair, featuring local artisans, unique gifts, festive food, and a charming holiday atmosphere perfect for family outings."}
],
    'Nashville, TN': [
    {'name': 'Christmas Village', 'date': '2024-11-09 to 2024-11-11', 'time': '10:00 AM', 'price': '\$10', 'description': "Get into the holiday spirit at Christmas Village, a festive marketplace featuring unique gifts, decorations, and delicious treats, all benefiting local charities."},
    {'name': 'Holiday LIGHTS at Cheekwood', 'date': '2024-11-23 to 2024-12-31', 'time': '5:00 PM', 'price': '\$26', 'description': "Experience the magic of the Holiday LIGHTS at Cheekwood, where stunning light displays transform the gardens into a winter wonderland, complete with festive activities and warm refreshments."},
    {'name': 'Nashville Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$40', 'description': "Join the Nashville Turkey Trot on Thanksgiving morning, a fun run that supports local charities while celebrating health and fitness with friends and family."}
],
    'Detroit, MI': [
    {'name': 'Detroit Tree Lighting Ceremony', 'date': '2024-11-17', 'time': '5:30 PM', 'price': 'Free', 'description': "Kick off the holiday season at the Detroit Tree Lighting Ceremony, featuring festive music, entertainment, and the grand illumination of the city's iconic Christmas tree."},
    {'name': 'America’s Thanksgiving Parade', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free', 'description': "Join the excitement at America’s Thanksgiving Parade, a beloved tradition showcasing vibrant floats, marching bands, and community spirit as it winds through downtown Detroit."},
    {'name': 'Detroit Christmas WonderFest', 'date': '2024-11-30 to 2024-12-23', 'time': '5:00 PM', 'price': '\$20', 'description': "Experience the joy of the Detroit Christmas WonderFest, a festive celebration featuring holiday lights, winter activities, and seasonal entertainment for all ages."}
],
    'Oklahoma City, OK': [
    {'name': 'Holiday River Parade', 'date': '2024-11-09', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy the festive spirit at the Holiday River Parade, featuring beautifully decorated boats, live entertainment, and a community celebration along the scenic riverside."},
    {'name': 'Winter Shoppes at Myriad Gardens', 'date': '2024-11-24 to 2024-12-31', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop local at the Winter Shoppes at Myriad Gardens, offering a charming holiday marketplace filled with unique gifts, crafts, and seasonal treats in a beautiful garden setting."},
    {'name': 'Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$35', 'description': "Participate in the Oklahoma City Turkey Trot on Thanksgiving morning, a fun race supporting local charities while promoting health and fitness during the holiday season."}
],
    'Portland, OR': [
    {'name': 'Portland Book Festival', 'date': '2024-11-11', 'time': '9:00 AM', 'price': '\$15', 'description': "Celebrate literature at the Portland Book Festival, featuring author readings, panel discussions, and a vibrant marketplace filled with books and literary activities."},
    {'name': 'ZooLights at Oregon Zoo', 'date': '2024-11-22 to 2024-01-05', 'time': '5:00 PM', 'price': '\$20', 'description': "Experience the magic of ZooLights at the Oregon Zoo, where dazzling light displays illuminate the grounds, creating a festive atmosphere for families to enjoy."},
    {'name': 'Portland Thanksgiving Dinner Cruise', 'date': '2024-11-28', 'time': '6:00 PM', 'price': '\$85', 'description': "Enjoy a unique Thanksgiving experience aboard the Portland Thanksgiving Dinner Cruise, featuring a delicious holiday meal, scenic views, and live entertainment on the water."}
],
    'Las Vegas, NV': [
    {'name': 'Las Vegas National Horse Show', 'date': '2024-11-15 to 2024-11-19', 'time': '9:00 AM', 'price': '\$20', 'description': "Join equestrian enthusiasts at the Las Vegas National Horse Show, featuring thrilling competitions, breathtaking performances, and the chance to see top horses and riders."},
    {'name': 'Fremont Street Thanksgiving Festival', 'date': '2024-11-24', 'time': '5:00 PM', 'price': 'Free', 'description': "Celebrate Thanksgiving at the Fremont Street Thanksgiving Festival, featuring live music, entertainment, food vendors, and a vibrant atmosphere in downtown Las Vegas."},
    {'name': 'Las Vegas Turkey Trot', 'date': '2024-11-28', 'time': '7:30 AM', 'price': '\$45', 'description': "Get moving on Thanksgiving morning with the Las Vegas Turkey Trot, a fun run supporting local charities, perfect for families and fitness enthusiasts alike."}
],
    'Baltimore, MD': [
    {'name': 'Christmas Village in Baltimore', 'date': '2024-11-18 to 2024-12-24', 'time': '11:00 AM', 'price': 'Free', 'description': "Experience the magic of the Christmas Village in Baltimore, featuring traditional German holiday market stalls, delicious food, unique gifts, and festive decorations."},
    {'name': 'Holiday Parade of Boats', 'date': '2024-11-24', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy the stunning Holiday Parade of Boats along the waterfront, where beautifully decorated boats light up the night, accompanied by festive music and holiday cheer."},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$40', 'description': "Join the Baltimore Thanksgiving Turkey Trot, a fun race supporting local charities, encouraging participants to run or walk while celebrating the holiday spirit."}
],
    'Milwaukee, WI': [
    {'name': 'Milwaukee Holiday Parade', 'date': '2024-11-18', 'time': '9:30 AM', 'price': 'Free', 'description': "Kick off the holiday season at the Milwaukee Holiday Parade, featuring floats, marching bands, and special guest appearances, creating a festive atmosphere for families."},
    {'name': 'Milwaukee Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Participate in the Milwaukee Turkey Trot on Thanksgiving morning, promoting fitness and fun while supporting local charities and enjoying community spirit."},
    {'name': 'Festival of Trees', 'date': '2024-11-24 to 2024-12-30', 'time': '10:00 AM', 'price': '\$10', 'description': "Explore the enchanting Festival of Trees, showcasing beautifully decorated Christmas trees, with proceeds benefiting local charities, perfect for families and holiday enthusiasts."}
],
    'Albuquerque, NM': [
    {'name': 'Balloon Music Fest', 'date': '2024-11-10', 'time': '6:00 PM', 'price': '\$30', 'description': "Experience the magic of music and colorful balloons at the Balloon Music Fest, featuring local bands, delicious food, and spectacular balloon displays."},
    {'name': 'Street Food Fiesta', 'date': '2024-11-12', 'time': '12:00 PM', 'price': 'Free', 'description': "Indulge in a variety of mouth-watering street foods from local vendors at the Street Food Fiesta, a celebration of culinary delights and community spirit."},
    {'name': 'Desert Art Walk', 'date': '2024-11-15', 'time': '10:00 AM', 'price': '\$15', 'description': "Join the Desert Art Walk to explore Albuquerque's vibrant art scene, featuring local artists, galleries, and live performances in a beautiful desert setting."}
],
    'Tucson, AZ': [
    {'name': 'Tucson Celtic Festival', 'date': '2024-11-04 to 2024-11-06', 'time': '10:00 AM', 'price': '\$25', 'description': "Celebrate all things Celtic at the Tucson Celtic Festival, featuring traditional music, dance, food, and cultural demonstrations."},
    {'name': 'Tucson Thanksgiving Festival', 'date': '2024-11-25', 'time': '11:00 AM', 'price': 'Free', 'description': "Enjoy a day of fun and community at the Tucson Thanksgiving Festival, with activities, entertainment, and delicious food to celebrate the holiday."},
    {'name': 'Winter Street Fair', 'date': '2024-11-30 to 2024-12-02', 'time': '10:00 AM', 'price': 'Free', 'description': "Experience the festive spirit at the Winter Street Fair, featuring local artisans, crafts, food stalls, and live entertainment perfect for the whole family."}
],
    'Fresno, CA': [
    {'name': 'Holiday Gift Show', 'date': '2024-11-04 to 2024-11-06', 'time': '10:00 AM', 'price': '\$10', 'description': "Find unique gifts for the holiday season at the Holiday Gift Show, featuring local artisans and vendors."},
    {'name': 'Fresno Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Join the Fresno Turkey Trot for a fun run on Thanksgiving morning, with family-friendly activities and a festive atmosphere."},
    {'name': 'Winter Street Fair', 'date': '2024-11-30 to 2024-12-02', 'time': '10:00 AM', 'price': 'Free', 'description': "Experience the Winter Street Fair with local crafts, delicious food, and live entertainment to kick off the holiday season."}
],
    'Sacramento, CA': [
    {'name': 'Sacramento Harvest Festival', 'date': '2024-11-04', 'time': '10:00 AM', 'price': '\$12', 'description': "Celebrate the harvest season at the Sacramento Harvest Festival, showcasing local produce, crafts, and family activities."},
    {'name': 'Old Sacramento Thanksgiving Market', 'date': '2024-11-18', 'time': '9:00 AM', 'price': 'Free', 'description': "Visit the Old Sacramento Thanksgiving Market for local goods, crafts, and a festive atmosphere ahead of the holiday."},
    {'name': 'Sacramento Turkey Trot', 'date': '2024-11-23', 'time': '8:00 AM', 'price': '\$25', 'description': "Participate in the Sacramento Turkey Trot, a fun race to get your day started before the Thanksgiving feast."}
],
    'Kansas City, MO': [
    {'name': 'Kansas City Renaissance Festival', 'date': '2024-11-05 to 2024-11-12', 'time': '10:00 AM', 'price': '\$15', 'description': "Step back in time at the Kansas City Renaissance Festival, featuring crafts, performances, and delicious food from the era."},
    {'name': 'Plaza Lighting Ceremony', 'date': '2024-11-23', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy the magical Plaza Lighting Ceremony, marking the start of the holiday season with lights, music, and community spirit."},
    {'name': 'Kansas City Thanksgiving 5K', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Run in the Kansas City Thanksgiving 5K, a festive race to work off those holiday calories while supporting local charities."}
],
    'Mesa, AZ': [
    {'name': 'Mesa Arts Festival', 'date': '2024-11-08', 'time': '10:00 AM', 'price': 'Free', 'description': "Join the Mesa Arts Festival to celebrate local artists and their work, featuring live performances, crafts, and interactive activities for all ages."},
    {'name': 'Mesa Thanksgiving Feastival', 'date': '2024-11-25', 'time': '11:00 AM', 'price': 'Free', 'description': "Enjoy the Mesa Thanksgiving Feastival, a community gathering featuring delicious food, entertainment, and fun activities for the whole family."},
    {'name': 'Mesa Holiday Lighting', 'date': '2024-11-30', 'time': '6:00 PM', 'price': 'Free', 'description': "Celebrate the start of the holiday season at the Mesa Holiday Lighting event, with festive lights, music, and community spirit."}
],
    'Omaha, NE': [
    {'name': 'Omaha Holiday Lights Festival', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free', 'description': "Kick off the holiday season at the Omaha Holiday Lights Festival, showcasing beautiful light displays and live entertainment."},
    {'name': 'Thanksgiving Day Parade', 'date': '2024-11-23', 'time': '10:00 AM', 'price': 'Free', 'description': "Join the fun at the Thanksgiving Day Parade in Omaha, featuring festive floats, local marching bands, and community participation."},
    {'name': 'Omaha Turkey Trot', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$35', 'description': "Participate in the Omaha Turkey Trot, a fun run that supports local charities and kicks off your Thanksgiving festivities."}
],
    'Miami, FL': [
    {'name': 'Miami Food Festival', 'date': '2024-11-05', 'time': '12:00 PM', 'price': '\$20', 'description': "Indulge in delicious food from local vendors at the Miami Food Festival, showcasing the city's vibrant culinary scene."},
    {'name': 'Art Basel Miami Beach', 'date': '2024-11-30 to 2024-12-03', 'time': '9:00 AM', 'price': 'Varies', 'description': "Explore contemporary art at Art Basel Miami Beach, featuring galleries from around the world, talks, and events."},
    {'name': 'Thanksgiving Turkey Trot Miami', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$40', 'description': "Join the Thanksgiving Turkey Trot in Miami, a festive race that combines fitness and fun for the whole family."}
],
    'Long Beach, CA': [
    {'name': 'Long Beach Harvest Fest', 'date': '2024-11-04', 'time': '11:00 AM', 'price': '\$10', 'description': "Celebrate the season at the Long Beach Harvest Fest, featuring local produce, crafts, and live music."},
    {'name': 'Holiday Boat Parade', 'date': '2024-11-30', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy the festive Holiday Boat Parade in Long Beach, where beautifully decorated boats cruise the harbor."},
    {'name': 'Turkey Trot Long Beach', 'date': '2024-11-28', 'time': '7:00 AM', 'price': '\$35', 'description': "Get moving at the Turkey Trot Long Beach, a fun run that supports local charities while celebrating the Thanksgiving spirit."}
],
    'Virginia Beach, VA': [
    {'name': 'Virginia Beach Fall Fest', 'date': '2024-11-02', 'time': '10:00 AM', 'price': 'Free', 'description': "Celebrate the season at the Virginia Beach Fall Fest, featuring local vendors, crafts, and family-friendly activities."},
    {'name': 'Holiday Parade at the Beach', 'date': '2024-11-25', 'time': '5:30 PM', 'price': 'Free', 'description': "Enjoy the festive Holiday Parade at the Beach, showcasing floats, marching bands, and community spirit."},
    {'name': 'Turkey Trot 5K Virginia Beach', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Join the Turkey Trot 5K in Virginia Beach, a fun run that supports local charities while celebrating the Thanksgiving holiday."}
],
    'Oakland, CA': [
    {'name': 'Oakland Wine Festival', 'date': '2024-11-04', 'time': '1:00 PM', 'price': '\$40', 'description': "Indulge in the Oakland Wine Festival, featuring local wineries, gourmet food, and live entertainment."},
    {'name': 'Jack London Square Lights Festival', 'date': '2024-11-24', 'time': '6:00 PM', 'price': 'Free', 'description': "Experience the Jack London Square Lights Festival, where the square lights up with holiday cheer and festivities."},
    {'name': 'Turkey Trot Oakland', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$35', 'description': "Participate in the Turkey Trot Oakland, a fun run that brings the community together for fitness and fun."}
],
    'Minneapolis, MN': [
    {'name': 'Minneapolis Holiday Market', 'date': '2024-11-01 to 2024-11-24', 'time': '10:00 AM', 'price': 'Free', 'description': "Visit the Minneapolis Holiday Market, featuring local artisans, food vendors, and holiday cheer."},
    {'name': 'Minneapolis Tree Lighting Ceremony', 'date': '2024-11-25', 'time': '5:00 PM', 'price': 'Free', 'description': "Join the Minneapolis Tree Lighting Ceremony to kick off the holiday season with festivities and community spirit."},
    {'name': 'Thanksgiving Day Walk/Run', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Take part in the Thanksgiving Day Walk/Run in Minneapolis, promoting fitness and fun for families."}
],
    'Tulsa, OK': [
    {'name': 'Tulsa WinterFest', 'date': '2024-11-24 to 2024-12-31', 'time': '11:00 AM', 'price': 'Free', 'description': "Experience Tulsa WinterFest, a festive celebration with holiday lights, activities, and entertainment for the whole family."},
    {'name': 'Thanksgiving Craft Market', 'date': '2024-11-19', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop local artisans and crafters at the Thanksgiving Craft Market, perfect for holiday gifts."},
    {'name': 'Turkey Trot Tulsa', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25', 'description': "Join the Turkey Trot Tulsa for a community fun run supporting local charities and promoting healthy living."}
],
    'Birmingham, AL': [
    {'name': 'Birmingham Greek Festival', 'date': '2024-11-02', 'time': '10:00 AM', 'price': '\$5', 'description': "Experience the rich culture and cuisine at the Birmingham Greek Festival, featuring authentic Greek food, music, and dancing."},
    {'name': 'Birmingham Christmas Village', 'date': '2024-11-23', 'time': '12:00 PM', 'price': 'Free', 'description': "Get into the holiday spirit at the Birmingham Christmas Village, offering local crafts, food, and festive activities for families."},
    {'name': 'Turkey Day 5K Birmingham', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Join the Turkey Day 5K in Birmingham, a fun run supporting local charities while celebrating Thanksgiving."}
],
'Montgomery, AL': [
    {'name': 'Montgomery Fall Festival', 'date': '2024-11-05', 'time': '11:00 AM', 'price': 'Free', 'description': "Celebrate the season at the Montgomery Fall Festival with family-friendly activities, crafts, and local vendors."},
    {'name': 'Montgomery Parade of Lights', 'date': '2024-11-23', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy the festive Montgomery Parade of Lights, featuring floats, music, and community spirit."},
    {'name': 'Turkey Trot Montgomery', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$25', 'description': "Participate in the Turkey Trot Montgomery, a fun run that encourages fitness and community togetherness."}
],
'Mobile, AL': [
    {'name': 'Mobile Bay Fest', 'date': '2024-11-02', 'time': '10:00 AM', 'price': '\$15', 'description': "Enjoy live music, local food, and arts and crafts at the Mobile Bay Fest, celebrating the culture of the Gulf Coast."},
    {'name': 'Magic Christmas in Lights', 'date': '2024-11-23 to 2024-12-31', 'time': '5:00 PM', 'price': '\$8', 'description': "Experience the Magic Christmas in Lights at Bellingrath Gardens, featuring dazzling light displays and festive activities."},
    {'name': 'Turkey Trot Mobile', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Mobile, a community run that promotes health and supports local charities."}
],
'Huntsville, AL': [
    {'name': 'Rocket City Fall Festival', 'date': '2024-11-04', 'time': '10:00 AM', 'price': '\$5', 'description': "Celebrate fall at the Rocket City Fall Festival, featuring local crafts, food, and entertainment for all ages."},
    {'name': 'Huntsville Tree Lighting', 'date': '2024-11-18', 'time': '6:00 PM', 'price': 'Free', 'description': "Join the Huntsville Tree Lighting ceremony to kick off the holiday season with festive activities and community spirit."},
    {'name': 'Turkey Trot Huntsville', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Participate in the Turkey Trot Huntsville, a fun and family-friendly run that supports local charities."}
],

    'Tuscaloosa, AL': [
    {'name': 'Tuscaloosa Arts Fest', 'date': '2024-11-10', 'time': '10:00 AM', 'price': '\$7', 'description': "Celebrate local art and culture at the Tuscaloosa Arts Fest, featuring artists, live performances, and hands-on activities."},
    {'name': 'Tuscaloosa Winter Wonderland', 'date': '2024-11-23', 'time': '5:00 PM', 'price': 'Free', 'description': "Enjoy the Tuscaloosa Winter Wonderland, a festive event filled with lights, music, and holiday cheer."},
    {'name': 'Thanksgiving Turkey Trot', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20', 'description': "Participate in the Thanksgiving Turkey Trot, a fun run that supports local charities while promoting health and fitness."}
],

'Anchorage, AK': [
    {'name': 'Anchorage Winter Arts Fair', 'date': '2024-11-12', 'time': '12:00 PM', 'price': 'Free', 'description': "Explore local crafts and artwork at the Anchorage Winter Arts Fair, featuring artists from the region."},
    {'name': 'Anchorage Holiday Lights Parade', 'date': '2024-11-25', 'time': '5:30 PM', 'price': 'Free', 'description': "Join the Anchorage Holiday Lights Parade, a community event showcasing festive floats and holiday spirit."},
    {'name': 'Anchorage Turkey Trot', 'date': '2024-11-28', 'time': '8:30 AM', 'price': '\$35', 'description': "Run in the Anchorage Turkey Trot, a fun event that promotes fitness and supports local causes."}
],

'Fairbanks, AK': [
    {'name': 'Fairbanks Holiday Bazaar', 'date': '2024-11-05', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop local at the Fairbanks Holiday Bazaar, featuring crafts, gifts, and festive treats."},
    {'name': 'Ice Carving Exhibition', 'date': '2024-11-22 to 2024-11-24', 'time': '12:00 PM', 'price': '\$20', 'description': "Marvel at stunning ice sculptures during the Fairbanks Ice Carving Exhibition, featuring talented artists."},
    {'name': 'Fairbanks Turkey Trot', 'date': '2024-11-22 to 2024-11-24', 'time': '12:00 PM', 'price': '\$20', 'description': "Join the Fairbanks Turkey Trot, a community run that promotes fitness and fun during the holiday season."}
],

'Juneau, AK': [
    {'name': 'Juneau Winter Arts Festival', 'date': '2024-11-09', 'time': '10:00 AM', 'price': 'Free', 'description': "Experience local arts and crafts at the Juneau Winter Arts Festival, showcasing the creativity of the community."},
    {'name': 'Juneau Thanksgiving Celebration', 'date': '2024-11-24', 'time': '12:00 PM', 'price': 'Free', 'description': "Gather for the Juneau Thanksgiving Celebration, featuring food, music, and community spirit."},
    {'name': 'Turkey Trot Juneau', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25', 'description': "Participate in the Turkey Trot Juneau, a fun run supporting local charities and promoting healthy lifestyles."}
],

'Sitka, AK': [
    {'name': 'Sitka Winter Fest', 'date': '2024-11-15', 'time': '11:00 AM', 'price': 'Free', 'description': "Enjoy winter-themed activities at Sitka Winter Fest, celebrating the season with family-friendly events."},
    {'name': 'Sitka Christmas Market', 'date': '2024-11-30', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop local at the Sitka Christmas Market, featuring crafts, food, and holiday gifts."},
    {'name': 'Sitka Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Join the Sitka Turkey Trot, a fun run that encourages community participation and supports local causes."}
],

    'Ketchikan, AK': [
    {'name': 'Ketchikan Christmas Festival', 'date': '2024-11-02', 'time': '10:00 AM', 'price': 'Free', 'description': "Celebrate the holiday season at the Ketchikan Christmas Festival, featuring local crafts, food, and festive activities."},
    {'name': 'Ketchikan Winter Lights Parade', 'date': '2024-11-25', 'time': '5:00 PM', 'price': 'Free', 'description': "Enjoy the magical Ketchikan Winter Lights Parade, showcasing beautifully lit floats and community spirit."},
    {'name': 'Ketchikan Turkey Trot', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$30', 'description': "Join the Ketchikan Turkey Trot, a fun run supporting local charities and promoting health in the community."}
],

'Chandler, AZ': [
    {'name': 'Chandler Harvest Festival', 'date': '2024-11-10', 'time': '11:00 AM', 'price': 'Free', 'description': "Experience the Chandler Harvest Festival with local vendors, activities for all ages, and fall-themed entertainment."},
    {'name': 'Chandler Christmas Market', 'date': '2024-11-29', 'time': '12:00 PM', 'price': 'Free', 'description': "Shop for unique gifts and enjoy holiday festivities at the Chandler Christmas Market."},
    {'name': 'Chandler Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Participate in the Chandler Turkey Trot, a community event that promotes fitness and supports local charities."}
],

'Glendale, AZ': [
    {'name': 'Glendale Glitter & Glow', 'date': '2024-11-30', 'time': '6:00 PM', 'price': 'Free', 'description': "Experience the Glendale Glitter & Glow, a festive event featuring dazzling lights, music, and fun for the whole family."},
    {'name': 'Glendale Thanksgiving Market', 'date': '2024-11-18', 'time': '10:00 AM', 'price': 'Free', 'description': "Enjoy the Glendale Thanksgiving Market, showcasing local crafts, food, and holiday cheer."},
    {'name': 'Turkey Trot Glendale', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Glendale, a fun and charitable run to kick off your Thanksgiving festivities."}
],

'Scottsdale, AZ': [
    {'name': 'Scottsdale Fall Festival', 'date': '2024-11-05', 'time': '10:00 AM', 'price': '\$10', 'description': "Celebrate fall at the Scottsdale Fall Festival with local vendors, food, and family-friendly activities."},
    {'name': 'Scottsdale Christmas Lights', 'date': '2024-11-30', 'time': '5:00 PM', 'price': 'Free', 'description': "Witness the spectacular Scottsdale Christmas Lights event, lighting up the night with festive displays."},
    {'name': 'Scottsdale Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Run in the Scottsdale Turkey Trot, a fun community event supporting local charities."}
],

'Gilbert, AZ': [
    {'name': 'Gilbert Harvest Festival', 'date': '2024-11-11', 'time': '10:00 AM', 'price': 'Free', 'description': "Enjoy the Gilbert Harvest Festival, a celebration of fall with local vendors, entertainment, and family activities."},
    {'name': 'Gilbert Christmas Festival', 'date': '2024-11-30', 'time': '5:00 PM', 'price': 'Free', 'description': "Get in the holiday spirit at the Gilbert Christmas Festival, featuring lights, music, and festive activities."},
    {'name': 'Turkey Trot Gilbert', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Join the Turkey Trot Gilbert, a fun run that supports local charities and encourages community fitness."}
],

  'Little Rock, AR': [
    {'name': 'Little Rock Harvest Fest', 'date': '2024-11-05', 'time': '12:00 PM', 'price': 'Free', 'description': "Celebrate the season with local vendors, food, and family-friendly activities at the Little Rock Harvest Fest."},
    {'name': 'Little Rock Food Truck Festival', 'date': '2024-11-15', 'time': '11:00 AM', 'price': '\$15', 'description': "Savor delicious offerings from a variety of food trucks at the Little Rock Food Truck Festival."},
    {'name': 'Turkey Trot Little Rock', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Little Rock, a community run supporting local charities and promoting health."}
],

'Fort Smith, AR': [
    {'name': 'Fort Smith Fall Fest', 'date': '2024-11-07', 'time': '10:00 AM', 'price': 'Free', 'description': "Experience the Fort Smith Fall Fest with local crafts, food, and autumn activities."},
    {'name': 'Fort Smith Art Walk', 'date': '2024-11-21', 'time': '5:00 PM', 'price': '\$10', 'description': "Enjoy the Fort Smith Art Walk, featuring local artists and their work in a vibrant community atmosphere."},
    {'name': 'Thanksgiving Parade Fort Smith', 'date': '2024-11-27', 'time': '6:00 PM', 'price': 'Free', 'description': "Watch the Thanksgiving Parade in Fort Smith, a festive celebration with floats, music, and community spirit."}
],

'Fayetteville, AR': [
    {'name': 'Fayetteville Lights Festival', 'date': '2024-11-18', 'time': '6:00 PM', 'price': 'Free', 'description': "Witness the Fayetteville Lights Festival as the city lights up for the holiday season."},
    {'name': 'Fayetteville Holiday Market', 'date': '2024-11-22', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for unique gifts at the Fayetteville Holiday Market featuring local artisans."},
    {'name': 'Turkey Trot Fayetteville', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Participate in the Turkey Trot Fayetteville, promoting health and supporting local charities."}
],

'Springdale, AR': [
    {'name': 'Springdale Fall Carnival', 'date': '2024-11-12', 'time': '4:00 PM', 'price': 'Free', 'description': "Enjoy family fun at the Springdale Fall Carnival, featuring games, rides, and seasonal treats."},
    {'name': 'Springdale Arts Fest', 'date': '2024-11-20', 'time': '1:00 PM', 'price': '\$10', 'description': "Explore local arts and crafts at the Springdale Arts Fest, showcasing talented artisans."},
    {'name': 'Thanksgiving 5K Springdale', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20', 'description': "Run in the Thanksgiving 5K Springdale, a community event supporting local charities."}
],

'Jonesboro, AR': [
    {'name': 'Jonesboro Thanksgiving Market', 'date': '2024-11-16', 'time': '11:00 AM', 'price': 'Free', 'description': "Visit the Jonesboro Thanksgiving Market for fresh produce, crafts, and holiday goodies."},
    {'name': 'Jonesboro Night of Lights', 'date': '2024-11-23', 'time': '5:00 PM', 'price': 'Free', 'description': "Celebrate the season at the Jonesboro Night of Lights with festive displays and activities."},
    {'name': 'Turkey Trot Jonesboro', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Jonesboro, promoting fitness and supporting local charities."}
],

'San Jose, CA': [
    {'name': 'San Jose Holiday Parade', 'date': '2024-11-24', 'time': '2:00 PM', 'price': 'Free', 'description': "Enjoy the festive San Jose Holiday Parade, featuring colorful floats and community participation."},
    {'name': 'San Jose Food Festival', 'date': '2024-11-12', 'time': '12:00 PM', 'price': '\$5', 'description': "Taste a variety of cuisines at the San Jose Food Festival, showcasing local chefs and food trucks."},
    {'name': 'San Jose Turkey Trot', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Run in the San Jose Turkey Trot, a fun run that supports local charities and promotes fitness."}
],

    'Bakersfield, CA': [
    {'name': 'Bakersfield Thanksgiving Fest', 'date': '2024-11-17', 'time': '10:00 AM', 'price': 'Free', 'description': "Join the Bakersfield Thanksgiving Fest for a day of family fun, food, and community activities."},
    {'name': 'Bakersfield Lights Parade', 'date': '2024-11-29', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy the festive Bakersfield Lights Parade featuring illuminated floats and seasonal entertainment."},
    {'name': 'Turkey Trot Bakersfield', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Participate in the Turkey Trot Bakersfield, a community run supporting local charities and health."}
],

'Anaheim, CA': [
    {'name': 'Anaheim Harvest Fair', 'date': '2024-11-04', 'time': '11:00 AM', 'price': 'Free', 'description': "Celebrate the harvest season at the Anaheim Harvest Fair with local vendors and family-friendly activities."},
    {'name': 'Anaheim Holiday Market', 'date': '2024-11-22', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for unique holiday gifts at the Anaheim Holiday Market featuring local artisans."},
    {'name': 'Turkey Trot Anaheim', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Run in the Turkey Trot Anaheim, promoting fitness and supporting local charities."}
],

'Santa Ana, CA': [
    {'name': 'Santa Ana Fall Festival', 'date': '2024-11-03', 'time': '12:00 PM', 'price': 'Free', 'description': "Enjoy a day of fun at the Santa Ana Fall Festival with games, food, and community spirit."},
    {'name': 'Santa Ana Arts & Crafts Fair', 'date': '2024-11-19', 'time': '9:00 AM', 'price': 'Free', 'description': "Explore local arts and crafts at the Santa Ana Arts & Crafts Fair, supporting local artisans."},
    {'name': 'Santa Ana Turkey Trot', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25', 'description': "Join the Santa Ana Turkey Trot, a fun run that supports local charities and promotes fitness."}
],

'Aurora, CO': [
    {'name': 'Aurora Harvest Market', 'date': '2024-11-09', 'time': '10:00 AM', 'price': 'Free', 'description': "Visit the Aurora Harvest Market for fresh produce, crafts, and seasonal goodies."},
    {'name': 'Aurora Winter Wonderland', 'date': '2024-11-27', 'time': '6:00 PM', 'price': 'Free', 'description': "Experience the magical Aurora Winter Wonderland, celebrating the festive season."},
    {'name': 'Turkey Trot Aurora', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Run in the Turkey Trot Aurora, a community event supporting local charities."}
],

'Colorado Springs, CO': [
    {'name': 'Colorado Springs Fall Fest', 'date': '2024-11-11', 'time': '10:00 AM', 'price': 'Free', 'description': "Celebrate autumn at the Colorado Springs Fall Fest with local vendors and family activities."},
    {'name': 'Colorado Springs Night Parade', 'date': '2024-11-26', 'time': '5:00 PM', 'price': 'Free', 'description': "Enjoy the Colorado Springs Night Parade, showcasing festive floats and community participation."},
    {'name': 'Turkey Trot Colorado Springs', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Colorado Springs, a fun run that supports local charities."}
],

'Fort Collins, CO': [
    {'name': 'Fort Collins Holiday Market', 'date': '2024-11-15', 'time': '9:00 AM', 'price': 'Free', 'description': "Shop for unique gifts at the Fort Collins Holiday Market featuring local artisans."},
    {'name': 'Fort Collins Lights Festival', 'date': '2024-11-20', 'time': '6:00 PM', 'price': 'Free', 'description': "Experience the festive Fort Collins Lights Festival with dazzling displays and community activities."},
    {'name': 'Turkey Trot Fort Collins', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Run in the Turkey Trot Fort Collins, promoting fitness and supporting local charities."}
],

    'Lakewood, CO': [
    {'name': 'Lakewood Fall Fest', 'date': '2024-11-08', 'time': '10:00 AM', 'price': 'Free', 'description': "Celebrate the fall season at the Lakewood Fall Fest with local vendors and family activities."},
    {'name': 'Lakewood Christmas Market', 'date': '2024-11-23', 'time': '12:00 PM', 'price': 'Free', 'description': "Shop for unique holiday gifts at the Lakewood Christmas Market featuring local artisans."},
    {'name': 'Turkey Trot Lakewood', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Lakewood, a community run that supports local charities and promotes fitness."}
],

'Bridgeport, CT': [
    {'name': 'Bridgeport Holiday Market', 'date': '2024-11-10', 'time': '11:00 AM', 'price': 'Free', 'description': "Explore the Bridgeport Holiday Market for local crafts, food, and holiday spirit."},
    {'name': 'Bridgeport Lights Festival', 'date': '2024-11-18', 'time': '5:00 PM', 'price': '\$10', 'description': "Enjoy the magical Bridgeport Lights Festival with stunning light displays and entertainment."},
    {'name': 'Thanksgiving Parade Bridgeport', 'date': '2024-11-23', 'time': '2:00 PM', 'price': 'Free', 'description': "Experience the Thanksgiving Parade Bridgeport featuring floats, performances, and community fun."}
],

'New Haven, CT': [
    {'name': 'New Haven Art Fest', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free', 'description': "Celebrate creativity at the New Haven Art Fest showcasing local artists and their works."},
    {'name': 'New Haven Fall Music Fest', 'date': '2024-11-19', 'time': '6:00 PM', 'price': '\$20', 'description': "Enjoy live performances at the New Haven Fall Music Fest, featuring local musicians and bands."},
    {'name': 'Thanksgiving 5K New Haven', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Run in the Thanksgiving 5K New Haven, a fun community event promoting fitness."}
],

'Stamford, CT': [
    {'name': 'Stamford Holiday Lights', 'date': '2024-11-15', 'time': '6:00 PM', 'price': 'Free', 'description': "Kick off the holiday season at the Stamford Holiday Lights celebration."},
    {'name': 'Stamford Arts & Crafts Market', 'date': '2024-11-21', 'time': '9:00 AM', 'price': 'Free', 'description': "Shop for handmade crafts and goods at the Stamford Arts & Crafts Market."},
    {'name': 'Turkey Trot Stamford', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Participate in the Turkey Trot Stamford, supporting local charities and promoting health."}
],

'Hartford, CT': [
    {'name': 'Hartford Harvest Festival', 'date': '2024-11-09', 'time': '11:00 AM', 'price': 'Free', 'description': "Celebrate the harvest at the Hartford Harvest Festival with local produce and family activities."},
    {'name': 'Hartford Christmas Village', 'date': '2024-11-25', 'time': '12:00 PM', 'price': 'Free', 'description': "Visit the Hartford Christmas Village for holiday shopping and festive cheer."},
    {'name': 'Turkey Trot Hartford', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25', 'description': "Join the Turkey Trot Hartford, a fun run supporting local charities."}
],

'Waterbury, CT': [
    {'name': 'Waterbury Fall Fair', 'date': '2024-11-08', 'time': '10:00 AM', 'price': 'Free', 'description': "Enjoy a day of family fun at the Waterbury Fall Fair with games, food, and local vendors."},
    {'name': 'Waterbury Night of Lights', 'date': '2024-11-20', 'time': '5:00 PM', 'price': '\$10', 'description': "Experience the festive Waterbury Night of Lights celebration with dazzling displays."},
    {'name': 'Thanksgiving 5K Waterbury', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$15', 'description': "Participate in the Thanksgiving 5K Waterbury, promoting fitness and community spirit."}
],
    'Wilmington, DE': [
    {'name': 'Wilmington Art & Wine Walk', 'date': '2024-11-14', 'time': '3:00 PM', 'price': '\$20', 'description': "Explore local art and enjoy wine tastings at the Wilmington Art & Wine Walk."},
    {'name': 'Wilmington Thanksgiving Parade', 'date': '2024-11-24', 'time': '2:00 PM', 'price': 'Free', 'description': "Join the festivities at the Wilmington Thanksgiving Parade with floats and performances."},
    {'name': 'Turkey Trot Wilmington', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$25', 'description': "Participate in the Turkey Trot Wilmington, a fun run supporting local charities."}
],

'Dover, DE': [
    {'name': 'Dover Fall Festival', 'date': '2024-11-06', 'time': '12:00 PM', 'price': 'Free', 'description': "Celebrate fall with family-friendly activities at the Dover Fall Festival."},
    {'name': 'Dover Holiday Craft Show', 'date': '2024-11-22', 'time': '9:00 AM', 'price': 'Free', 'description': "Shop for unique handmade gifts at the Dover Holiday Craft Show."},
    {'name': 'Turkey Trot Dover', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Dover, a community run that supports local charities."}
],

'Newark, DE': [
    {'name': 'Newark Lights Festival', 'date': '2024-11-11', 'time': '5:00 PM', 'price': 'Free', 'description': "Enjoy the festive atmosphere at the Newark Lights Festival with holiday displays."},
    {'name': 'Newark Art Walk', 'date': '2024-11-17', 'time': '1:00 PM', 'price': '\$10', 'description': "Explore local art and meet artists at the Newark Art Walk."},
    {'name': 'Thanksgiving 5K Newark', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Participate in the Thanksgiving 5K Newark to promote fitness and community."}
],

'Middletown, DE': [
    {'name': 'Middletown Harvest Fest', 'date': '2024-11-13', 'time': '11:00 AM', 'price': 'Free', 'description': "Celebrate the harvest season at the Middletown Harvest Fest with local vendors."},
    {'name': 'Middletown Night Market', 'date': '2024-11-19', 'time': '4:00 PM', 'price': '\$15', 'description': "Experience the Middletown Night Market featuring food, crafts, and live music."},
    {'name': 'Turkey Trot Middletown', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Middletown, a community fun run for all ages."}
],

'Smyrna, DE': [
    {'name': 'Smyrna Fall Carnival', 'date': '2024-11-05', 'time': '10:00 AM', 'price': 'Free', 'description': "Enjoy rides, games, and food at the Smyrna Fall Carnival."},
    {'name': 'Smyrna Winter Wonderland', 'date': '2024-11-26', 'time': '6:00 PM', 'price': 'Free', 'description': "Experience the magic of winter at the Smyrna Winter Wonderland."},
    {'name': 'Thanksgiving 5K Smyrna', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$15', 'description': "Participate in the Thanksgiving 5K Smyrna, promoting fitness and community spirit."}
],

    'Tampa, FL': [
    {'name': 'Tampa Bay Holiday Market', 'date': '2024-11-10', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for holiday gifts and enjoy local vendors at the Tampa Bay Holiday Market."},
    {'name': 'Tampa Art Fest', 'date': '2024-11-18', 'time': '1:00 PM', 'price': '\$10', 'description': "Discover local art and crafts at the Tampa Art Fest, featuring artists from the region."},
    {'name': 'Turkey Trot Tampa', 'date': '2024-11-28', 'time': '7:30 AM', 'price': '\$30', 'description': "Join the Turkey Trot Tampa for a fun and festive run to kick off Thanksgiving."}
],

'Orlando, FL': [
    {'name': 'Orlando Fall Carnival', 'date': '2024-11-08', 'time': '11:00 AM', 'price': 'Free', 'description': "Enjoy rides, games, and food at the Orlando Fall Carnival."},
    {'name': 'Orlando Thanksgiving Parade', 'date': '2024-11-22', 'time': '6:00 PM', 'price': 'Free', 'description': "Celebrate the holiday season at the Orlando Thanksgiving Parade with floats and entertainment."},
    {'name': 'Turkey Trot Orlando', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Participate in the Turkey Trot Orlando, a community run supporting local charities."}
],

'St. Petersburg, FL': [
    {'name': 'St. Petersburg Music Fest', 'date': '2024-11-07', 'time': '3:00 PM', 'price': '\$20', 'description': "Enjoy live music and performances at the St. Petersburg Music Fest."},
    {'name': 'St. Pete Night Market', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free', 'description': "Explore local crafts and food at the St. Pete Night Market."},
    {'name': 'Turkey Trot St. Petersburg', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$30', 'description': "Join the Turkey Trot St. Petersburg for a fun and festive run."}
],

'Hialeah, FL': [
    {'name': 'Hialeah Cultural Fair', 'date': '2024-11-05', 'time': '10:00 AM', 'price': 'Free', 'description': "Celebrate the rich cultural diversity of Hialeah at the Cultural Fair."},
    {'name': 'Hialeah Fall Festival', 'date': '2024-11-17', 'time': '2:00 PM', 'price': '\$10', 'description': "Enjoy fall-themed activities and local vendors at the Hialeah Fall Festival."},
    {'name': 'Turkey Trot Hialeah', 'date': '2024-11-28', 'time': '9:00 AM', 'price': '\$20', 'description': "Participate in the Turkey Trot Hialeah, a community fun run for all ages."}
],

'Tallahassee, FL': [
    {'name': 'Tallahassee Harvest Fest', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free', 'description': "Celebrate the harvest season at the Tallahassee Harvest Fest with local produce and crafts."},
    {'name': 'Tallahassee Holiday Market', 'date': '2024-11-23', 'time': '9:00 AM', 'price': 'Free', 'description': "Shop for holiday gifts at the Tallahassee Holiday Market featuring local artisans."},
    {'name': 'Turkey Trot Tallahassee', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Tallahassee for a fun run to support local charities."}
],

'Fort Lauderdale, FL': [
    {'name': 'Fort Lauderdale Art Fair', 'date': '2024-11-14', 'time': '12:00 PM', 'price': '\$15', 'description': "Explore local art and meet artists at the Fort Lauderdale Art Fair."},
    {'name': 'Fort Lauderdale Food Fest', 'date': '2024-11-19', 'time': '6:00 PM', 'price': '\$5', 'description': "Enjoy tastings from local restaurants at the Fort Lauderdale Food Fest."},
    {'name': 'Turkey Trot Fort Lauderdale', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Participate in the Turkey Trot Fort Lauderdale, a festive run for a good cause."}
],

'Port St. Lucie, FL': [
    {'name': 'Port St. Lucie Holiday Market', 'date': '2024-11-06', 'time': '11:00 AM', 'price': 'Free', 'description': "Shop for holiday gifts at the Port St. Lucie Holiday Market with local vendors."},
    {'name': 'Port St. Lucie Winter Festival', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free', 'description': "Experience the magic of winter at the Port St. Lucie Winter Festival."},
    {'name': 'Turkey Trot Port St. Lucie', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Join the Turkey Trot Port St. Lucie for a fun community run."}
],

  'Augusta, GA': [
    {'name': 'Augusta Canal Moonlight Paddle', 'date': '2024-11-12', 'time': '7:00 PM', 'price': '\$35', 'description': "Enjoy a peaceful evening paddle along the Augusta Canal under the moonlight."},
    {'name': 'Jazz in the Garden', 'date': '2024-11-17', 'time': '4:00 PM', 'price': 'Free', 'description': "Relax and enjoy live jazz music in a beautiful garden setting."},
    {'name': 'Augusta Holiday Market', 'date': '2024-11-25', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for unique holiday gifts at the Augusta Holiday Market featuring local artisans."}
],

'Columbus, GA': [
    {'name': 'Columbus RiverFest', 'date': '2024-11-09', 'time': '1:00 PM', 'price': 'Free', 'description': "Celebrate the river with live music, food vendors, and family-friendly activities."},
    {'name': 'History Walking Tour', 'date': '2024-11-18', 'time': '10:00 AM', 'price': '\$10', 'description': "Explore the rich history of Columbus on this guided walking tour."},
    {'name': 'Columbus Holiday Parade', 'date': '2024-11-23', 'time': '3:00 PM', 'price': 'Free', 'description': "Join the festive atmosphere at the Columbus Holiday Parade with floats and performances."}
],

'Macon, GA': [
    {'name': 'Macon Lights & Music Show', 'date': '2024-11-14', 'time': '6:00 PM', 'price': '\$5', 'description': "Experience a dazzling lights display accompanied by live music in Macon."},
    {'name': 'Macon Film Festival', 'date': '2024-11-20', 'time': '7:00 PM', 'price': '\$15', 'description': "Catch a variety of films at the annual Macon Film Festival."},
    {'name': 'Thanksgiving Potluck in the Park', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free', 'description': "Bring a dish to share and enjoy a community Thanksgiving potluck in the park."}
],

'Savannah, GA': [
    {'name': 'Savannah Food and Wine Fest', 'date': '2024-11-05', 'time': '12:00 PM', 'price': '\$50', 'description': "Savor exquisite food and wine pairings at the Savannah Food and Wine Fest."},
    {'name': 'Ghosts of Savannah Tour', 'date': '2024-11-15', 'time': '8:00 PM', 'price': '\$20', 'description': "Explore the haunted history of Savannah on this guided ghost tour."},
    {'name': 'River Street Art Walk', 'date': '2024-11-28', 'time': '10:00 AM', 'price': 'Free', 'description': "Stroll along River Street and enjoy local art displays and demonstrations."}
],

    'Honolulu, HI': [
    {'name': 'Honolulu Marathon Expo', 'date': '2024-11-07', 'time': '10:00 AM', 'price': 'Free', 'description': "Join us for the Honolulu Marathon Expo, featuring vendors, fitness demonstrations, and marathon information."},
    {'name': 'Honolulu Night Market', 'date': '2024-11-18', 'time': '6:00 PM', 'price': 'Free', 'description': "Explore local art, food, and entertainment at the vibrant Honolulu Night Market."},
    {'name': 'Thanksgiving Luau', 'date': '2024-11-28', 'time': '5:30 PM', 'price': '\$45', 'description': "Celebrate Thanksgiving Hawaiian style with a traditional luau, featuring food, music, and dance."}
],

'Hilo, HI': [
    {'name': 'Hilo Art & Craft Fair', 'date': '2024-11-08', 'time': '9:00 AM', 'price': 'Free', 'description': "Browse handmade crafts and local art at the Hilo Art & Craft Fair."},
    {'name': 'Volcano Twilight Tour', 'date': '2024-11-14', 'time': '5:00 PM', 'price': '\$35', 'description': "Experience the beauty of Volcanoes National Park on this guided twilight tour."},
    {'name': 'Hilo Farmers Market Thanksgiving Special', 'date': '2024-11-27', 'time': '9:00 AM', 'price': 'Free', 'description': "Join us for a special Thanksgiving edition of the Hilo Farmers Market, featuring local produce and crafts."}
],

'Kailua, HI': [
    {'name': 'Kailua Bay Kayak Adventure', 'date': '2024-11-12', 'time': '8:00 AM', 'price': '\$60', 'description': "Explore the stunning Kailua Bay on a guided kayak adventure."},
    {'name': 'Kailua Art Walk', 'date': '2024-11-20', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy local art displays and meet artists at the Kailua Art Walk."},
    {'name': 'Thanksgiving Surf & Turf', 'date': '2024-11-28', 'time': '12:00 PM', 'price': '\$45', 'description': "Indulge in a Thanksgiving feast with surf and turf options at a local restaurant."}
],

'Kaneohe, HI': [
    {'name': 'Kaneohe Botanical Garden Tour', 'date': '2024-11-15', 'time': '10:00 AM', 'price': '\$10', 'description': "Explore the lush beauty of the Kaneohe Botanical Garden on this guided tour."},
    {'name': 'Kaneohe Film Under the Stars', 'date': '2024-11-21', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy a classic film screening under the stars at Kaneohe."},
    {'name': 'Thanksgiving Beach Yoga', 'date': '2024-11-28', 'time': '7:00 AM', 'price': '\$15', 'description': "Start your Thanksgiving day with a refreshing beach yoga session."}
],

'Waipahu, HI': [
    {'name': 'Waipahu Cultural Fest', 'date': '2024-11-09', 'time': '11:00 AM', 'price': 'Free', 'description': "Celebrate the diverse cultures of Hawaii at the Waipahu Cultural Fest."},
    {'name': 'Waipahu Night Market', 'date': '2024-11-16', 'time': '5:00 PM', 'price': 'Free', 'description': "Discover local food, crafts, and entertainment at the Waipahu Night Market."},
    {'name': 'Thanksgiving Community Feast', 'date': '2024-11-28', 'time': '12:00 PM', 'price': '\$10', 'description': "Join the community for a festive Thanksgiving feast at Waipahu."}
],

    'Boise, ID': [
    {'name': 'Boise Fall Harvest Market', 'date': '2024-11-11', 'time': '9:00 AM', 'price': 'Free', 'description': "Visit the Boise Fall Harvest Market for fresh produce, local crafts, and seasonal treats."},
    {'name': 'Boise Riverwalk Lights', 'date': '2024-11-18', 'time': '5:30 PM', 'price': 'Free', 'description': "Experience the magical lights along the Boise Riverwalk during this festive event."},
    {'name': 'Turkey Day 5K Boise', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Join the Turkey Day 5K for a fun run before your Thanksgiving feast!"}
],

'Meridian, ID': [
    {'name': 'Meridian Autumn Arts Festival', 'date': '2024-11-06', 'time': '10:00 AM', 'price': 'Free', 'description': "Enjoy local art and crafts at the Meridian Autumn Arts Festival."},
    {'name': 'Meridian Fire & Ice Show', 'date': '2024-11-20', 'time': '7:00 PM', 'price': '\$10', 'description': "Watch a spectacular fire and ice show featuring performances and art."},
    {'name': 'Thanksgiving Family Hike', 'date': '2024-11-28', 'time': '9:00 AM', 'price': 'Free', 'description': "Join us for a family-friendly hike to celebrate Thanksgiving in nature."}
],

'Nampa, ID': [
    {'name': 'Nampa Holiday Farmers Market', 'date': '2024-11-10', 'time': '9:00 AM', 'price': 'Free', 'description': "Shop local produce and crafts at the Nampa Holiday Farmers Market."},
    {'name': 'Nampa Art & Wine Festival', 'date': '2024-11-15', 'time': '3:00 PM', 'price': '\$15', 'description': "Taste local wines and explore artwork at the Nampa Art & Wine Festival."},
    {'name': 'Turkey Trot Nampa', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Participate in the Turkey Trot for a fun and festive run!"}
],

'Idaho Falls, ID': [
    {'name': 'Idaho Falls Film Fest', 'date': '2024-11-05', 'time': '7:00 PM', 'price': '\$12', 'description': "Catch a variety of films at the Idaho Falls Film Festival."},
    {'name': 'Lights on the Riverwalk', 'date': '2024-11-22', 'time': '5:00 PM', 'price': 'Free', 'description': "Enjoy the beautiful lights along the Idaho Falls Riverwalk."},
    {'name': 'Thanksgiving Charity Run', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$10', 'description': "Join us for a charity run on Thanksgiving morning to support local causes."}
],

'Pocatello, ID': [
    {'name': 'Pocatello Pumpkin Fest', 'date': '2024-11-07', 'time': '10:00 AM', 'price': 'Free', 'description': "Celebrate fall with pumpkins, crafts, and family fun at the Pocatello Pumpkin Fest."},
    {'name': 'Pocatello Night Market', 'date': '2024-11-17', 'time': '6:00 PM', 'price': 'Free', 'description': "Explore local food, crafts, and entertainment at the Pocatello Night Market."},
    {'name': 'Turkey Day 5K Pocatello', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$15', 'description': "Get active with the Turkey Day 5K before your Thanksgiving meal!"}
],

   'Aurora, IL': [
    {'name': 'Aurora Light Up Night', 'date': '2024-11-11', 'time': '5:30 PM', 'price': 'Free', 'description': "Join the community for the annual Light Up Night, celebrating the start of the holiday season with festive lights and activities."},
    {'name': 'Aurora Art Fair', 'date': '2024-11-16', 'time': '10:00 AM', 'price': 'Free', 'description': "Explore local art and crafts at the Aurora Art Fair, showcasing talented artists from the region."},
    {'name': 'Turkey Trot Aurora', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Participate in the Turkey Trot Aurora, a fun run to kick off your Thanksgiving festivities."}
],

'Naperville, IL': [
    {'name': 'Naperville Holiday Craft Show', 'date': '2024-11-08', 'time': '9:00 AM', 'price': 'Free', 'description': "Shop unique handmade gifts and crafts at the Naperville Holiday Craft Show."},
    {'name': 'Naperville Jazz Fest', 'date': '2024-11-14', 'time': '6:00 PM', 'price': '\$15', 'description': "Enjoy an evening of smooth jazz performances at the Naperville Jazz Fest."},
    {'name': 'Thanksgiving Parade Naperville', 'date': '2024-11-28', 'time': '10:00 AM', 'price': 'Free', 'description': "Celebrate Thanksgiving with the annual Naperville Parade featuring floats, music, and fun for the whole family."}
],

'Joliet, IL': [
    {'name': 'Joliet Vintage Market', 'date': '2024-11-13', 'time': '11:00 AM', 'price': 'Free', 'description': "Find unique vintage items at the Joliet Vintage Market, perfect for collectors and enthusiasts."},
    {'name': 'Joliet Fest of Lights', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free', 'description': "Experience the Joliet Fest of Lights, featuring dazzling holiday displays and entertainment."},
    {'name': 'Turkey Day Run Joliet', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$15', 'description': "Join the Turkey Day Run Joliet for a healthy and fun way to start your Thanksgiving."}
],

'Rockford, IL': [
    {'name': 'Rockford Winter Market', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for fresh produce, local goods, and holiday treats at the Rockford Winter Market."},
    {'name': 'Rockford Film Festival', 'date': '2024-11-15', 'time': '7:00 PM', 'price': '\$12', 'description': "Enjoy a selection of independent films at the Rockford Film Festival."},
    {'name': 'Thanksgiving Dinner Cruise', 'date': '2024-11-25', 'time': '5:30 PM', 'price': '\$45', 'description': "Celebrate Thanksgiving with a scenic dinner cruise featuring a festive menu."}
],

'Sprigfield, IL': [
    {'name': 'Springfield Arts & Crafts Fair', 'date': '2024-11-05', 'time': '10:00 AM', 'price': 'Free', 'description': "Explore local artists and crafters at the Springfield Arts & Crafts Fair."},
    {'name': 'Springfield Historical Walk', 'date': '2024-11-14', 'time': '3:00 PM', 'price': '\$10', 'description': "Join a guided walk to learn about the rich history of Springfield."},
    {'name': 'Winter Wonderland Gala', 'date': '2024-11-30', 'time': '6:00 PM', 'price': '\$50', 'description': "Dress up for the Winter Wonderland Gala, an evening of fine dining and dancing."}
],

   'Fort Wayne, IN': [
    {'name': 'Fort Wayne Children’s Zoo Winter Wonderland', 'date': '2024-11-15', 'time': '5:00 PM', 'price': '\$10', 'description': "Experience the magic of winter at the Fort Wayne Children’s Zoo, featuring festive lights and activities for all ages."},
    {'name': 'Fort Wayne Craft Beer Festival', 'date': '2024-11-18', 'time': '6:00 PM', 'price': '\$30', 'description': "Sample a wide variety of craft beers from local and regional breweries at the Fort Wayne Craft Beer Festival."},
    {'name': 'Thanksgiving Community Feast', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Join the community for a free Thanksgiving feast, bringing people together for good food and company."}
],

'Evansville, IN': [
    {'name': 'Evansville Christmas Parade', 'date': '2024-11-21', 'time': '6:00 PM', 'price': 'Free', 'description': "Kick off the holiday season with the annual Evansville Christmas Parade, featuring floats, music, and festive cheer."},
    {'name': 'Evansville Arts on the River', 'date': '2024-11-26', 'time': '10:00 AM', 'price': 'Free', 'description': "Enjoy a day of art and culture along the river at Evansville Arts on the River, showcasing local artists."},
    {'name': 'Thanksgiving Wine & Dine', 'date': '2024-11-28', 'time': '7:00 PM', 'price': '\$40', 'description': "Indulge in a gourmet Thanksgiving dinner paired with exquisite wines."}
],

'South Bend, IN': [
    {'name': 'South Bend Chocolate Festival', 'date': '2024-11-08', 'time': '11:00 AM', 'price': '\$15', 'description': "Satisfy your sweet tooth at the South Bend Chocolate Festival, featuring delicious chocolate treats and activities."},
    {'name': 'South Bend Winter Art Walk', 'date': '2024-11-20', 'time': '5:00 PM', 'price': 'Free', 'description': "Explore local galleries and artists during the South Bend Winter Art Walk."},
    {'name': 'Thanksgiving Cooking Class', 'date': '2024-11-24', 'time': '2:00 PM', 'price': '\$35', 'description': "Learn how to prepare a delicious Thanksgiving meal at this interactive cooking class."}
],

'Carmel, IN': [
    {'name': 'Carmel Farmers Market Holiday Edition', 'date': '2024-11-09', 'time': '9:00 AM', 'price': 'Free', 'description': "Shop for seasonal produce and holiday gifts at the Carmel Farmers Market Holiday Edition."},
    {'name': 'Carmel Winter Festival', 'date': '2024-11-15', 'time': '6:00 PM', 'price': 'Free', 'description': "Celebrate winter with activities, entertainment, and community fun at the Carmel Winter Festival."},
    {'name': 'Thanksgiving Wine Pairing Dinner', 'date': '2024-11-26', 'time': '7:00 PM', 'price': '\$60', 'description': "Enjoy a special Thanksgiving dinner with expertly paired wines."}
],

    'Des Moines, IA': [
    {'name': 'Des Moines Art Festival', 'date': '2024-11-04', 'time': '10:00 AM', 'price': 'Free', 'description': "Explore the creativity of local and national artists at the Des Moines Art Festival, featuring artwork, food, and live entertainment."},
    {'name': 'Des Moines Thanksgiving Market', 'date': '2024-11-18', 'time': '5:00 PM', 'price': 'Free', 'description': "Shop for fresh produce and unique gifts at the Des Moines Thanksgiving Market."},
    {'name': 'Des Moines Holiday Lights Festival', 'date': '2024-11-29', 'time': '6:00 PM', 'price': 'Free', 'description': "Celebrate the holiday season with dazzling lights and festive activities at the Des Moines Holiday Lights Festival."}
],

'Cedar Rapids, IA': [
    {'name': 'Cedar Rapids History Museum Holiday Open House', 'date': '2024-11-10', 'time': '1:00 PM', 'price': 'Free', 'description': "Join us for a holiday open house at the Cedar Rapids History Museum, featuring exhibits and seasonal treats."},
    {'name': 'Cedar Rapids Community Theatre Production', 'date': '2024-11-14', 'time': '7:30 PM', 'price': '\$20', 'description': "Enjoy a live theater production showcasing local talent at the Cedar Rapids Community Theatre."},
    {'name': 'Thanksgiving Potluck', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free', 'description': "Bring a dish to share and enjoy a community Thanksgiving potluck with friends and neighbors."}
],

'Davenport, IA': [
    {'name': 'Davenport Christmas Market', 'date': '2024-11-11', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for handmade gifts and festive foods at the Davenport Christmas Market."},
    {'name': 'Davenport Holiday Lights Parade', 'date': '2024-11-22', 'time': '5:30 PM', 'price': 'Free', 'description': "Kick off the holiday season with the Davenport Holiday Lights Parade featuring floats, music, and more."},
    {'name': 'Thanksgiving Yoga Retreat', 'date': '2024-11-24', 'time': '9:00 AM', 'price': '\$25', 'description': "Relax and rejuvenate with a Thanksgiving-themed yoga retreat."}
],

'S Sioux City, IA': [
    {'name': 'Sioux City Festival of Trees', 'date': '2024-11-01', 'time': '10:00 AM', 'price': 'Free', 'description': "Enjoy beautifully decorated trees and holiday displays at the Sioux City Festival of Trees."},
    {'name': 'Sioux City Art Walk', 'date': '2024-11-16', 'time': '5:00 PM', 'price': 'Free', 'description': "Explore local galleries and meet artists during the Sioux City Art Walk."},
    {'name': 'Thanksgiving Family Fun Day', 'date': '2024-11-28', 'time': '1:00 PM', 'price': '\$10', 'description': "Enjoy games, crafts, and activities for the whole family on Thanksgiving."}
],

'Waterloo, IA': [
    {'name': 'Waterloo Oktoberfest', 'date': '2024-11-02', 'time': '12:00 PM', 'price': 'Free', 'description': "Celebrate Oktoberfest with traditional food, music, and activities in Waterloo."},
    {'name': 'Waterloo Winter Wonderland', 'date': '2024-11-21', 'time': '4:00 PM', 'price': 'Free', 'description': "Experience the magic of winter with festive lights and activities at Waterloo's Winter Wonderland."},
    {'name': 'Thanksgiving Cooking Workshop', 'date': '2024-11-24', 'time': '3:00 PM', 'price': '\$20', 'description': "Learn new recipes and cooking techniques at the Thanksgiving Cooking Workshop."}
],

    'Wichita, KS': [
    {'name': 'Wichita River Festival', 'date': '2024-11-07', 'time': '5:00 PM', 'price': 'Free', 'description': "Join the community for the Wichita River Festival, celebrating local culture with food, music, and entertainment."},
    {'name': 'Wichita Winter Art Fair', 'date': '2024-11-15', 'time': '10:00 AM', 'price': '\$5', 'description': "Explore unique art and crafts from local artists at the Wichita Winter Art Fair."},
    {'name': 'Thanksgiving Dinner in the Park', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free', 'description': "Gather for a community Thanksgiving dinner in the park, sharing food and gratitude with friends and family."}
],

'Overland Park, KS': [
    {'name': 'Overland Park Fall Festival', 'date': '2024-11-10', 'time': '11:00 AM', 'price': 'Free', 'description': "Celebrate the fall season with activities, crafts, and local vendors at the Overland Park Fall Festival."},
    {'name': 'Overland Park Arts in the Park', 'date': '2024-11-19', 'time': '4:00 PM', 'price': '\$10', 'description': "Enjoy an evening of arts and culture with performances and exhibits at Overland Park Arts in the Park."},
    {'name': 'Thanksgiving Celebration Concert', 'date': '2024-11-27', 'time': '7:00 PM', 'price': '\$15', 'description': "Experience the sounds of the season at the Thanksgiving Celebration Concert featuring local musicians."}
],

'Olathe, KS': [
    {'name': 'Olathe Holiday Market', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for holiday gifts and treats at the Olathe Holiday Market."},
    {'name': 'Olathe Community Theatre Performance', 'date': '2024-11-17', 'time': '2:00 PM', 'price': '\$12', 'description': "Enjoy a local theater performance showcasing talent from the Olathe community."},
    {'name': 'Thanksgiving Charity Run', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$20', 'description': "Participate in the Thanksgiving Charity Run to support local charities while enjoying a healthy start to your holiday."}
],

'Topeka, KS': [
    {'name': 'Topeka Arts Fest', 'date': '2024-11-04', 'time': '10:00 AM', 'price': 'Free', 'description': "Experience a celebration of art and creativity at the Topeka Arts Fest with exhibits and activities."},
    {'name': 'Topeka Thanksgiving Celebration', 'date': '2024-11-20', 'time': '6:00 PM', 'price': 'Free', 'description': "Join the community for the Topeka Thanksgiving Celebration, featuring family-friendly activities and entertainment."},
    {'name': 'Topeka Winter Concert', 'date': '2024-11-29', 'time': '7:00 PM', 'price': '\$15', 'description': "Enjoy a winter concert featuring local musicians, perfect for ringing in the holiday season."}
],

  'Louisville, KY': [
    {'name': 'Louisville International Festival of Film', 'date': '2024-11-05', 'time': '6:00 PM', 'price': '\$15', 'description': "Celebrate cinematic art at the Louisville International Festival of Film, featuring screenings of independent films."},
    {'name': 'Thunder Over Louisville', 'date': '2024-11-12', 'time': '7:00 PM', 'price': 'Free', 'description': "Join the excitement of Thunder Over Louisville, a spectacular fireworks show and air show, marking the start of the Kentucky Derby Festival."},
    {'name': 'Louisville Holiday Market', 'date': '2024-11-18', 'time': '10:00 AM', 'price': 'Free', 'description': "Get into the holiday spirit at the Louisville Holiday Market, showcasing local artisans and festive goods."}
],

'Lexington, KY': [
    {'name': 'Lexington Craft Beer Fest', 'date': '2024-11-10', 'time': '2:00 PM', 'price': '\$20', 'description': "Taste a variety of local brews at the Lexington Craft Beer Fest, featuring craft beers from local breweries."},
    {'name': 'Lexington Art League Holiday Showcase', 'date': '2024-11-15', 'time': '5:00 PM', 'price': 'Free', 'description': "Explore unique artworks from local artists at the Lexington Art League's Holiday Showcase."},
    {'name': 'Lexington Thanksgiving Gala', 'date': '2024-11-23', 'time': '6:00 PM', 'price': '\$50', 'description': "Join the Lexington Thanksgiving Gala for an evening of fine dining, entertainment, and giving thanks."}
],

'Bowling Green, KY': [
    {'name': 'Bowling Green Hot Rods Baseball Banquet', 'date': '2024-11-01', 'time': '7:00 PM', 'price': '\$25', 'description': "Celebrate the Bowling Green Hot Rods at their annual baseball banquet with food and awards."},
    {'name': 'Bowling Green Christmas Parade', 'date': '2024-11-21', 'time': '5:00 PM', 'price': 'Free', 'description': "Kick off the holiday season with the Bowling Green Christmas Parade, featuring floats and local performances."},
    {'name': 'Thanksgiving Potluck Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Join the community for a Thanksgiving potluck dinner, sharing food and fellowship."}
],

'Owensboro, KY': [
    {'name': 'Owensboro Music Festival', 'date': '2024-11-06', 'time': '5:00 PM', 'price': '\$10', 'description': "Enjoy live performances from local musicians at the Owensboro Music Festival."},
    {'name': 'Owensboro Christmas in the Park', 'date': '2024-11-16', 'time': '6:00 PM', 'price': 'Free', 'description': "Experience the magic of the holidays with lights, music, and festivities at Owensboro Christmas in the Park."},
    {'name': 'Thanksgiving Family Festival', 'date': '2024-11-24', 'time': '12:00 PM', 'price': 'Free', 'description': "Celebrate Thanksgiving with family-friendly activities and entertainment at the Thanksgiving Family Festival."}
],

'Covington, KY': [
    {'name': 'Covington Arts & Music Festival', 'date': '2024-11-03', 'time': '11:00 AM', 'price': 'Free', 'description': "Explore local art and enjoy live music at the Covington Arts & Music Festival."},
    {'name': 'Covington Holiday Walk', 'date': '2024-11-15', 'time': '5:00 PM', 'price': 'Free', 'description': "Join the Covington Holiday Walk, featuring shops open late with holiday treats and special events."},
    {'name': 'Thanksgiving Cooking Class', 'date': '2024-11-25', 'time': '2:00 PM', 'price': '\$30', 'description': "Learn how to prepare a Thanksgiving feast in this interactive cooking class."}
],

   'New Orleans, LA': [
    {'name': 'New Orleans Jazz & Heritage Festival', 'date': '2024-11-09', 'time': '10:00 AM', 'price': '\$75', 'description': "Immerse yourself in the rich culture of New Orleans at the Jazz & Heritage Festival, celebrating the city's unique music and food."},
    {'name': 'New Orleans French Market Holiday Festival', 'date': '2024-11-19', 'time': '5:00 PM', 'price': 'Free', 'description': "Enjoy live music, local artisans, and holiday treats at the French Market Holiday Festival."},
    {'name': "Thanksgiving Feast at Commander's Palace", 'date': '2024-11-28', 'time': '12:00 PM', 'price': '\$75', 'description': "Indulge in a traditional Thanksgiving feast at the iconic Commander's Palace, known for its exquisite cuisine."}
],

'Baton Rouge, LA': [
    {'name': 'Baton Rouge Jazz & Heritage Festival', 'date': '2024-11-05', 'time': '10:00 AM', 'price': '\$15', 'description': "Celebrate the musical heritage of Louisiana at the Baton Rouge Jazz & Heritage Festival with local bands and delicious food."},
    {'name': 'Baton Rouge Thanksgiving Parade', 'date': '2024-11-18', 'time': '5:00 PM', 'price': 'Free', 'description': "Join the festive atmosphere at the Baton Rouge Thanksgiving Parade, featuring floats, music, and local performances."},
    {'name': 'Baton Rouge Holiday Food Drive', 'date': '2024-11-25', 'time': '9:00 AM', 'price': 'Free', 'description': "Help those in need by participating in the Baton Rouge Holiday Food Drive, collecting donations for local families."}
],

'Shrveport, LA': [
    {'name': 'Shreveport Film Festival', 'date': '2024-11-10', 'time': '1:00 PM', 'price': '\$12', 'description': "Enjoy screenings of independent films at the Shreveport Film Festival, showcasing local and national talent."},
    {'name': 'Shreveport Christmas Market', 'date': '2024-11-22', 'time': '10:00 AM', 'price': 'Free', 'description': "Get into the holiday spirit at the Shreveport Christmas Market, featuring local vendors and festive activities."},
    {'name': 'Shreveport Thanksgiving Potluck', 'date': '2024-11-28', 'time': '2:00 PM', 'price': 'Free', 'description': "Join the community for a Thanksgiving potluck, sharing food and fellowship."}
],

'Lafayette, LA': [
    {'name': 'Lafayette Cajun & Creole Festival', 'date': '2024-11-03', 'time': '11:00 AM', 'price': '\$20', 'description': "Experience the flavors of Cajun and Creole cuisine at the Lafayette Cajun & Creole Festival, with music and dance."},
    {'name': 'Lafayette Winter Wonderland', 'date': '2024-11-15', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy holiday festivities at the Lafayette Winter Wonderland, featuring lights, music, and family activities."},
    {'name': 'Lafayette Community Thanksgiving Dinner', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free', 'description': "Celebrate Thanksgiving with a community dinner, open to all."}
],

'Lake Charles, LA': [
    {'name': 'Lake Charles Historic Home Tour', 'date': '2024-11-06', 'time': '5:00 PM', 'price': '\$15', 'description': "Take a tour of Lake Charles' historic homes and learn about the city's rich architectural heritage."},
    {'name': 'Lake Charles Holiday Festival', 'date': '2024-11-20', 'time': '5:00 PM', 'price': 'Free', 'description': "Join the festivities at the Lake Charles Holiday Festival, featuring local crafts, food, and entertainment."},
    {'name': 'Lake Charles Thanksgiving Run', 'date': '2024-11-28', 'time': '8:00 AM', 'price': '\$25', 'description': "Kick off Thanksgiving morning with the Lake Charles Thanksgiving Run, a fun run for all ages."}
],

    'Portland, ME': [
    {'name': 'Portland Food Festival', 'date': '2024-11-02', 'time': '11:00 AM', 'price': '\$5', 'description': "Savor the flavors of the region at the Portland Food Festival, showcasing local chefs and culinary delights."},
    {'name': 'Portland Winter Fest', 'date': '2024-11-10', 'time': '4:00 PM', 'price': 'Free', 'description': "Join the winter festivities at Portland Winter Fest, featuring ice skating, live music, and seasonal treats."},
    {'name': 'Portland Community Thanksgiving', 'date': '2024-11-26', 'time': '12:00 PM', 'price': 'Free', 'description': "Celebrate Thanksgiving with a community meal open to all, fostering fellowship and gratitude."}
],

'Lewiston, ME': [
    {'name': 'Lewiston Winter Carnival', 'date': '2024-11-04', 'time': '10:00 AM', 'price': 'Free', 'description': "Embrace the winter season at the Lewiston Winter Carnival, featuring activities for all ages."},
    {'name': 'Lewiston Arts & Crafts Fair', 'date': '2024-11-12', 'time': '9:00 AM', 'price': 'Free', 'description': "Explore local artistry and craftsmanship at the Lewiston Arts & Crafts Fair, perfect for holiday shopping."},
    {'name': 'Lewiston Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Gather with friends and family for a traditional Thanksgiving dinner in a welcoming atmosphere."}
],

'Bangor, ME': [
    {'name': 'Bangor Film Festival', 'date': '2024-11-08', 'time': '7:00 PM', 'price': '\$10', 'description': "Watch a selection of independent films at the Bangor Film Festival, featuring local and national filmmakers."},
    {'name': 'Bangor Holiday Celebration', 'date': '2024-11-15', 'time': '6:00 PM', 'price': 'Free', 'description': "Kick off the holiday season at the Bangor Holiday Celebration, with festive lights and community spirit."},
    {'name': 'Bangor Thanksgiving Community Meal', 'date': '2024-11-27', 'time': '2:00 PM', 'price': 'Free', 'description': "Enjoy a community meal on the day after Thanksgiving, bringing people together for good food and company."}
],

'South Portland, ME': [
    {'name': 'South Portland Harvest Festival', 'date': '2024-11-01', 'time': '11:00 AM', 'price': 'Free', 'description': "Celebrate the harvest season with local vendors, music, and fun activities at the South Portland Harvest Festival."},
    {'name': 'South Portland Holiday Bazaar', 'date': '2024-11-18', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for unique holiday gifts and crafts at the South Portland Holiday Bazaar, featuring local artisans."},
    {'name': 'South Portland Thanksgiving Gala', 'date': '2024-11-26', 'time': '6:00 PM', 'price': '\$30', 'description': "Join us for an elegant Thanksgiving Gala, complete with dinner, entertainment, and festive cheer."}
],

'Auburn, ME': [
    {'name': 'Auburn Music in the Park', 'date': '2024-11-05', 'time': '6:00 PM', 'price': 'Free', 'description': "Enjoy an evening of live music in the park, featuring local bands and a family-friendly atmosphere."},
    {'name': 'Auburn Christmas Market', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free', 'description': "Get into the holiday spirit at the Auburn Christmas Market, showcasing local crafts and festive food."},
    {'name': 'Auburn Thanksgiving Community Feast', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free', 'description': "Gather for a community feast the day after Thanksgiving, promoting togetherness and gratitude."}
],

    'Frederick, MD': [
    {'name': 'Frederick Arts Festival', 'date': '2024-11-09', 'time': '11:00 AM', 'price': '\$10', 'description': "Experience a celebration of creativity at the Frederick Arts Festival, featuring local artists, live performances, and workshops."},
    {'name': 'Frederick Holiday Market', 'date': '2024-11-16', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for unique gifts and holiday decorations at the Frederick Holiday Market, filled with local vendors and festive cheer."},
    {'name': 'Frederick Community Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Join the community for a Thanksgiving dinner, celebrating togetherness and gratitude with delicious food."}
],

'Rockville, MD': [
    {'name': 'Rockville Science Day', 'date': '2024-11-03', 'time': '1:00 PM', 'price': 'Free', 'description': "Discover the wonders of science at Rockville Science Day, featuring interactive exhibits and demonstrations for all ages."},
    {'name': 'Rockville Holiday Concert', 'date': '2024-11-14', 'time': '7:00 PM', 'price': '\$15', 'description': "Enjoy a festive evening of music at the Rockville Holiday Concert, featuring local musicians and holiday classics."},
    {'name': 'Rockville Thanksgiving Community Meal', 'date': '2024-11-25', 'time': '3:00 PM', 'price': 'Free', 'description': "Celebrate Thanksgiving with a community meal, providing a warm meal and fellowship for everyone."}
],

'Gaithersburg, MD': [
    {'name': 'Gaithersburg Music Festival', 'date': '2024-11-06', 'time': '5:00 PM', 'price': 'Free', 'description': "Enjoy an evening of live music at the Gaithersburg Music Festival, featuring local bands and a family-friendly atmosphere."},
    {'name': 'Gaithersburg Arts & Crafts Show', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free', 'description': "Explore unique handmade crafts and artwork at the Gaithersburg Arts & Crafts Show, perfect for holiday shopping."},
    {'name': 'Gaithersburg Thanksgiving Celebration', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free', 'description': "Gather for a Thanksgiving celebration with food, activities, and community spirit."}
],

'Bowie, MD': [
    {'name': 'Bowie Heritage Day', 'date': '2024-11-10', 'time': '12:00 PM', 'price': 'Free', 'description': "Celebrate the history and culture of Bowie at Heritage Day, featuring local exhibits, music, and family-friendly activities."},
    {'name': 'Bowie Holiday Arts & Crafts Fair', 'date': '2024-11-20', 'time': '10:00 AM', 'price': 'Free', 'description': "Find unique gifts and festive crafts at the Bowie Holiday Arts & Crafts Fair, showcasing local artisans."},
    {'name': 'Bowie Thanksgiving Potluck', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free', 'description': "Bring a dish to share at the Bowie Thanksgiving Potluck, a community gathering to celebrate the holiday together."}
],

  'Worcester, MA': [
    {'name': 'Worcester Music Festival', 'date': '2024-11-02', 'time': '5:00 PM', 'price': '\$10', 'description': "Join us for the Worcester Music Festival, showcasing local and regional artists across various genres."},
    {'name': 'Worcester Art in the Park', 'date': '2024-11-08', 'time': '1:00 PM', 'price': 'Free', 'description': "Experience a day of creativity at Worcester Art in the Park, featuring local artists, interactive installations, and family-friendly activities."},
    {'name': 'Worcester Thanksgiving Food Drive', 'date': '2024-11-20', 'time': '10:00 AM', 'price': 'Free', 'description': "Participate in the Worcester Thanksgiving Food Drive to help provide meals to those in need this holiday season."}
],

'Springfield, MA': [
    {'name': 'Springfield Jazz & Roots Festival', 'date': '2024-11-01', 'time': '4:00 PM', 'price': '\$12', 'description': "Celebrate the rich musical heritage at the Springfield Jazz & Roots Festival with live performances from talented musicians."},
    {'name': 'Springfield Holiday Parade', 'date': '2024-11-16', 'time': '10:00 AM', 'price': 'Free', 'description': "Enjoy a festive day out at the Springfield Holiday Parade, featuring floats, music, and community spirit."},
    {'name': 'Springfield Community Thanksgiving Feast', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Join the Springfield Community for a Thanksgiving Feast, providing a warm meal and fellowship for all."}
],

'Lowell, MA': [
    {'name': 'Lowell Folk Festival', 'date': '2024-11-03', 'time': '11:00 AM', 'price': 'Free', 'description': "Experience the culture and traditions of folk music at the Lowell Folk Festival, featuring performances and craft demonstrations."},
    {'name': 'Lowell Holiday Festival', 'date': '2024-11-14', 'time': '5:00 PM', 'price': 'Free', 'description': "Kick off the holiday season at the Lowell Holiday Festival with festive lights, entertainment, and local vendors."},
    {'name': 'Lowell Thanksgiving Community Dinner', 'date': '2024-11-27', 'time': '2:00 PM', 'price': 'Free', 'description': "Gather for the Lowell Thanksgiving Community Dinner, a celebration of gratitude and togetherness."}
],

'Cambridge, MA': [
    {'name': 'Cambridge Science Festival', 'date': '2024-11-05', 'time': '3:00 PM', 'price': '\$8', 'description': "Explore the wonders of science at the Cambridge Science Festival, featuring interactive exhibits and demonstrations for all ages."},
    {'name': 'Cambridge Winter Market', 'date': '2024-11-11', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop for unique gifts at the Cambridge Winter Market, showcasing local artisans and holiday goods."},
    {'name': 'Cambridge Thanksgiving Celebration', 'date': '2024-11-25', 'time': '12:00 PM', 'price': 'Free', 'description': "Join the Cambridge Thanksgiving Celebration, a community gathering with food, activities, and festive cheer."}
],

   'Grand Rapids, MI': [
    {'name': 'Grand Rapids ArtPrize', 'date': '2024-11-07', 'time': '6:00 PM', 'price': 'Free', 'description': "Explore the vibrant Grand Rapids ArtPrize, an open competition celebrating artists from around the globe."},
    {'name': 'Grand Rapids Holiday Market', 'date': '2024-11-20', 'time': '11:00 AM', 'price': 'Free', 'description': "Get into the holiday spirit at the Grand Rapids Holiday Market, featuring local vendors, crafts, and festive treats."},
    {'name': 'Grand Rapids Thanksgiving Feast', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Join the community for a Thanksgiving Feast in Grand Rapids, providing food and fellowship for all."}
],

'Warren, MI': [
    {'name': 'Warren Historical Society Event', 'date': '2024-11-04', 'time': '5:00 PM', 'price': '\$10', 'description': "Discover local history at the Warren Historical Society Event, featuring guest speakers and exhibits."},
    {'name': 'Warren Winter Festival', 'date': '2024-11-15', 'time': '3:00 PM', 'price': 'Free', 'description': "Celebrate winter at the Warren Winter Festival with activities, games, and community entertainment."},
    {'name': 'Warren Thanksgiving Dinner', 'date': '2024-11-26', 'time': '2:00 PM', 'price': 'Free', 'description': "Come together for the Warren Thanksgiving Dinner, providing a delicious meal and a warm atmosphere for all."}
],

'Sterling Heights, MI': [
    {'name': 'Sterling Heights Music Festival', 'date': '2024-11-09', 'time': '6:00 PM', 'price': '\$5', 'description': "Enjoy a night of music at the Sterling Heights Music Festival, featuring local bands and entertainment."},
    {'name': 'Sterling Heights Holiday Craft Show', 'date': '2024-11-17', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop handmade goods at the Sterling Heights Holiday Craft Show, showcasing local artisans and craftspeople."},
    {'name': 'Sterling Heights Community Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Join the Sterling Heights Community for a Thanksgiving Dinner, offering a meal for all residents."}
],

'Lansing, MI': [
    {'name': 'Lansing Art Gallery Show', 'date': '2024-11-06', 'time': '5:00 PM', 'price': 'Free', 'description': "Experience local talent at the Lansing Art Gallery Show, featuring works from emerging artists."},
    {'name': 'Lansing Holiday Light Parade', 'date': '2024-11-21', 'time': '7:00 PM', 'price': 'Free', 'description': "Kick off the holiday season at the Lansing Holiday Light Parade, with festive floats and community spirit."},
    {'name': 'Lansing Thanksgiving Community Meal', 'date': '2024-11-27', 'time': '12:00 PM', 'price': 'Free', 'description': "Celebrate Thanksgiving with the Lansing community at a free meal for all."}
],

'Ann Arbor, MI': [
    {'name': 'Ann Arbor Film Festival', 'date': '2024-11-03', 'time': '1:00 PM', 'price': '\$10', 'description': "Watch innovative films at the Ann Arbor Film Festival, showcasing independent filmmakers from around the world."},
    {'name': 'Ann Arbor Winter Fest', 'date': '2024-11-12', 'time': '4:00 PM', 'price': 'Free', 'description': "Enjoy winter festivities at the Ann Arbor Winter Fest, featuring ice sculptures, activities, and seasonal treats."},
    {'name': 'Ann Arbor Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Gather for the Ann Arbor Thanksgiving Dinner, offering food and companionship for those in the community."}
],

 'Saint Paul, MN': [
    {'name': 'Saint Paul Winter Carnival', 'date': '2024-11-09', 'time': '10:00 AM', 'price': 'Free', 'description': "Join the festivities at the Saint Paul Winter Carnival, featuring ice sculptures, parades, and winter activities for all ages."},
    {'name': 'Saint Paul Art Crawl', 'date': '2024-11-14', 'time': '5:00 PM', 'price': 'Free', 'description': "Explore local art at the Saint Paul Art Crawl, showcasing galleries and artists throughout the city."},
    {'name': 'Saint Paul Thanksgiving Celebration', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Celebrate Thanksgiving with the Saint Paul community, offering a warm meal and festive atmosphere."}
],

'Rochester, MN': [
    {'name': 'Rochester International Film Festival', 'date': '2024-11-02', 'time': '4:00 PM', 'price': '\$10', 'description': "Experience independent cinema at the Rochester International Film Festival, featuring diverse films and filmmakers."},
    {'name': 'Rochester Craft Beer Festival', 'date': '2024-11-11', 'time': '12:00 PM', 'price': '\$20', 'description': "Taste local brews at the Rochester Craft Beer Festival, showcasing regional breweries and craft beer."},
    {'name': 'Rochester Community Thanksgiving Dinner', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free', 'description': "Gather with the community for a free Thanksgiving dinner in Rochester, bringing people together for food and fellowship."}
],

'Duluth, MN': [
    {'name': 'Duluth Harvest Festival', 'date': '2024-11-03', 'time': '11:00 AM', 'price': 'Free', 'description': "Celebrate the season at the Duluth Harvest Festival, featuring local vendors, crafts, and seasonal activities."},
    {'name': 'Duluth Art and Wine Walk', 'date': '2024-11-08', 'time': '5:00 PM', 'price': '\$15', 'description': "Enjoy an evening of art and wine at the Duluth Art and Wine Walk, exploring galleries with wine tastings."},
    {'name': 'Duluth Thanksgiving Feast', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free', 'description': "Join the Duluth community for a Thanksgiving Feast, offering a delicious meal for all attendees."}
],

'Bloomington, MN': [
    {'name': 'Bloomington Winter Market', 'date': '2024-11-10', 'time': '9:00 AM', 'price': 'Free', 'description': "Shop local at the Bloomington Winter Market, featuring fresh produce, handmade goods, and seasonal treats."},
    {'name': 'Bloomington Holiday Lights Festival', 'date': '2024-11-20', 'time': '6:00 PM', 'price': 'Free', 'description': "Celebrate the season at the Bloomington Holiday Lights Festival, showcasing festive lights and family-friendly activities."},
    {'name': 'Bloomington Community Thanksgiving Dinner', 'date': '2024-11-27', 'time': '1:00 PM', 'price': 'Free', 'description': "Come together for a free Thanksgiving dinner in Bloomington, providing a warm meal and community spirit."}
],

    'Jackson, MS': [
    {'name': 'Jackson Music Festival', 'date': '2024-11-05', 'time': '7:00 PM', 'price': '\$15', 'description': "Enjoy live performances from local and national musicians at the Jackson Music Festival, showcasing a variety of genres."},
    {'name': 'Jackson Art in the Park', 'date': '2024-11-12', 'time': '10:00 AM', 'price': 'Free', 'description': "Explore the creative talents of local artists at the Jackson Art in the Park event, featuring art displays and interactive activities."},
    {'name': 'Jackson Thanksgiving Community Meal', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Gather with the community for a free Thanksgiving meal in Jackson, fostering togetherness and gratitude."}
],

'Gulfport, MS': [
    {'name': 'Gulfport Seafood Festival', 'date': '2024-11-02', 'time': '12:00 PM', 'price': '\$5', 'description': "Savor delicious seafood and local cuisine at the Gulfport Seafood Festival, featuring food vendors and entertainment."},
    {'name': 'Gulfport Holiday Market', 'date': '2024-11-15', 'time': '10:00 AM', 'price': 'Free', 'description': "Shop local vendors at the Gulfport Holiday Market, offering unique gifts and holiday treats for all."},
    {'name': 'Gulfport Community Thanksgiving Dinner', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Join the Gulfport community for a Thanksgiving dinner, providing food and fellowship for all attendees."}
],

'Southaven, MS': [
    {'name': 'Southaven Arts & Crafts Fair', 'date': '2024-11-09', 'time': '10:00 AM', 'price': 'Free', 'description': "Explore handmade crafts and artworks at the Southaven Arts & Crafts Fair, supporting local artisans."},
    {'name': 'Southaven Winter Wonderland', 'date': '2024-11-22', 'time': '5:00 PM', 'price': 'Free', 'description': "Experience the magic of the season at Southaven Winter Wonderland, featuring festive lights, activities, and holiday spirit."},
    {'name': 'Southaven Thanksgiving Community Meal', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free', 'description': "Celebrate Thanksgiving with the Southaven community, offering a free meal and a chance to connect with neighbors."}
],

'Biloxi, MS': [
    {'name': 'Biloxi Blues Festival', 'date': '2024-11-04', 'time': '3:00 PM', 'price': '\$10', 'description': "Enjoy live blues music at the Biloxi Blues Festival, featuring talented musicians and a vibrant atmosphere."},
    {'name': 'Biloxi Craft Beer Festival', 'date': '2024-11-16', 'time': '1:00 PM', 'price': '\$20', 'description': "Taste a variety of craft beers from local breweries at the Biloxi Craft Beer Festival, along with food and live entertainment."},
    {'name': 'Biloxi Thanksgiving Feast', 'date': '2024-11-28', 'time': '1:00 PM', 'price': 'Free', 'description': "Join the Biloxi community for a Thanksgiving Feast, providing a warm meal and a festive environment for all."}
],

'Hattiesburg, MS': [
    {'name': 'Hattiesburg Music and Arts Festival', 'date': '2024-11-07', 'time': '5:00 PM', 'price': '\$10', 'description': "Celebrate local talent at the Hattiesburg Music and Arts Festival, featuring performances and art exhibitions."},
    {'name': 'Hattiesburg Holiday Celebration', 'date': '2024-11-21', 'time': '4:00 PM', 'price': 'Free', 'description': "Kick off the holiday season at the Hattiesburg Holiday Celebration, with festive activities and entertainment for families."},
    {'name': 'Hattiesburg Community Thanksgiving Dinner', 'date': '2024-11-28', 'time': '12:00 PM', 'price': 'Free', 'description': "Come together for a free Thanksgiving dinner in Hattiesburg, uniting the community in a spirit of gratitude."}
],
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
