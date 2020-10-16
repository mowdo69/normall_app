import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:normall_app/hotel_crousel.dart';

import 'destination_carousel.dart';

// ignore: camel_case_types
class home_screen extends StatefulWidget {
  @override
  _home_screenState createState() => _home_screenState();
}

// ignore: camel_case_types
class _home_screenState extends State<home_screen> {
  int _selectedIndex = 1;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.bookMedical,
    FontAwesomeIcons.carSide,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFF44b3cb),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Icon(
            _icons[index],
            size: 25.0,
            color: _selectedIndex == index
                ? Theme.of(context).primaryColor
                : Color(0xFFB4CC3C4),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Stay and live with happiness',
                style: TextStyle(
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.4,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 10.0,
            ),
            DestinationCarousel(),
            SizedBox(
              height: 20.0,
            ),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(
            Icons.search,
            size: 22.0,
            color: Color(0xFF44b3cb),
          ),
          Icon(
            Icons.list,
            size: 22.0,
            color: Color(0xFF44b3cb),
          ),
          Icon(
            Icons.help,
            size: 22.0,
            color: Color(0xFF44b3cb),
          ),
          Icon(
            Icons.favorite,
            size: 22.0,
            color: Color(0xFF44b3cb),
          ),
          Icon(
            Icons.exit_to_app,
            size: 22.0,
            color: Color(0xFF44b3cb),
          ),
        ],
        onTap: (index) {
          //() => Navigator.pushNamed(context, '/');
          debugPrint('Hello world');
        },
        color: Colors.teal[50],
        backgroundColor: Colors.blue[100],
        buttonBackgroundColor: Colors.lightBlue[200],
        height: 50.0,
        animationDuration: Duration(milliseconds: 190),
        animationCurve: Curves.decelerate,
        index: 2,
      ),
    );
  }
}
