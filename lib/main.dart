import 'package:flutter/material.dart';
import 'package:normall_app/home_screen.dart';
import 'package:normall_app/sign_up.dart';

import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF44b3cb),
        accentColor: Color(0xFFD8EDF1),
        scaffoldBackgroundColor: Color(0xFFD8ECF1),
      ),
      //home: home_screen(),
      routes: {
        '/': (context) => login(),
        '/home_screen': (context) => home_screen(),
        '/signUp': (context) => signUp(),
      },
    );
  }
}
