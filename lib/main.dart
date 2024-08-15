import 'package:flutter/material.dart';
import 'splash.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sports App',
      home: SplashScreen(),
    );
  }
}



// class sport

class Sport {
  final String name;
  final String details;
  final String moredetails;
  final String image;

  Sport(this.name, this.details, this.moredetails, this.image);
}

// class player
class Player {
  final String name;
  final String info;
  final String image1;
  final String website;
  String? image2;



  Player(this.name,
      this.info,
      this.image1,
      this.website,
      {this.image2});
}
