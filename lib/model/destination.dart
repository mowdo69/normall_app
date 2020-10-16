import 'activity_model.dart';

class Destination {
  String imageurl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination(
      {this.imageurl,
      this.city,
      this.activities,
      this.country,
      this.description});
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/bungalo.jpg',
    name: 'Banjul Beach hotel',
    type: 'five Star hotel',
    startTime: ['9:00 am', '11: 00 am'],
    rating: 5,
    price: 500,
  ),
  Activity(
    imageUrl: 'assets/images/JembehBeachHotel.jpg',
    name: 'jembeh Hotel',
    type: 'Local Tours',
    startTime: ['8:00 am', '13:00 pm'],
    rating: 3,
    price: 800,
  ),
  Activity(
    imageUrl: 'assets/images/kololi.jpg',
    name: 'Kololi Hotel',
    type: 'International tourist',
    startTime: ['7:00 am', '9:00 pm'],
    rating: 3,
    price: 3000,
  ),
];

List<Destination> destination = [
  Destination(
    imageurl: 'assets/images/mowdo.jpg',
    city: 'BJL',
    country: 'Gambia',
    description: 'enjoy your holiday',
    activities: activities,
  ),
  Destination(
    imageurl: 'assets/images/pakaloBeachHotel.jpg',
    city: 'Tanji',
    country: 'Senegal',
    description: 'torist hotel for rural areas',
    activities: activities,
  ),
  Destination(
    imageurl: 'assets/images/prince_hotels.jpg',
    city: 'Brikama',
    country: 'gambia',
    description: 'Hotels for low middle class',
    activities: activities,
  ),
  Destination(
    imageurl: 'assets/images/best.jpg',
    city: 'Bamako',
    country: 'Mali',
    description: 'Hotel for backway travelers',
    activities: activities,
  ),
  Destination(
    imageurl: 'assets/images/senegambiaBeach.jpg',
    city: 'Kotu',
    country: 'Gambia',
    description: 'Hotel for gold diggers',
    activities: activities,
  ),
  Destination(
    imageurl: 'assets/images/sun_beach.jpg',
    city: 'Bijilo',
    country: 'Gambia',
    description: 'Hotel for businessman',
    activities: activities,
  ),
];
