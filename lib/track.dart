import 'package:flutter/material.dart';


class TrackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          "Track Page",
          style: TextStyle(
            fontSize: 37,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/map.jpg",fit: BoxFit.cover, height:654, width:385 ,alignment: Alignment.center,),

          ],
        ),
      ),
    );
  }
}
