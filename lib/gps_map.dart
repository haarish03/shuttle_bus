import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class GPSMap extends StatefulWidget {
  @override
  _GPSMapState createState() => _GPSMapState();
}

class _GPSMapState extends State<GPSMap> {
  LatLng currentLocation = LatLng(0, 0); // default location

  @override
  void initState() {
    super.initState();
    fetchLocation();
  }

  Future<void> fetchLocation() async {
    final response = await http.get(Uri.parse('http://192.168.239.248/location'));


    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      setState(() {
        currentLocation = LatLng(jsonResponse['latitude'], jsonResponse['longitude']);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.6, // Adjust as needed
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: currentLocation,
              zoom: 15,
            ),
            markers: {
              Marker(
                markerId: MarkerId('current_location'),
                position: currentLocation,
              ),
            },
          ),
        ),
        FloatingActionButton(
          onPressed: fetchLocation,
          child: Icon(Icons.refresh),
        ),
      ],
    );
  }
}
