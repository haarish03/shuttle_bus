import 'package:flutter/material.dart';
import 'package:shuttle_bus/home.dart';
import 'package:shuttle_bus/login.dart';
import 'package:shuttle_bus/schedule.dart';
import 'package:shuttle_bus/track.dart';
import 'package:shuttle_bus/gps_map.dart'; // Assuming you'll place the GPSMap widget in a separate file named gps_map.dart

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shuttle Bus Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => LoginDemo(),
        '/trackPage': (context) => TrackPage(),
        '/schedule': (context) => Schedule(),
        '/track' : (context) => TrackPage(),
      },
    );
  }
}
