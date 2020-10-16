class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/bakau_hotel.jpg',
    name: 'Bakau Hotel',
    address: 'new town',
    price: 1999,
  ),
  Hotel(
    imageUrl: 'assets/images/BamboBeachHotel.jpg',
    name: 'Bambo Hotel',
    address: 'Bambo twon',
    price: 1220,
  ),
  Hotel(
    imageUrl: 'assets/images/bookalow.jpg',
    name: 'Bookalow',
    address: 'Senegambia',
    price: 1338,
  ),
];
