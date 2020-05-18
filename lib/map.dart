import 'dart:async';

import 'package:Tree_Companion/dashboard.dart';
import 'package:Tree_Companion/leaderboard.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapP extends StatefulWidget {
  @override
  _MapPState createState() => _MapPState();
}

class _MapPState extends State<MapP> {
  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            _googleMap(context),
            new Container(
              margin: EdgeInsets.only(top: 655, left: 10),
                child: new FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              label: Text("Back"),
              icon: Icon(Icons.arrow_left),
              backgroundColor: Colors.green,
            ))
          ],
        ),
      ),
    );
  }

  Widget _googleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(43.4643, -80.5204), zoom: 10),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {homeMarker, plasticGarbage1},
      ),
    );
  }

  Marker homeMarker = Marker(
      markerId: MarkerId("home"),
      position: LatLng(43.4643, -80.5204),
      infoWindow: InfoWindow(title: "Home, Waterloo"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
  Marker plasticGarbage1 = Marker(
      markerId: MarkerId("plasticGarbage1"),
      position: LatLng(43.4722286, -80.5908138),
      infoWindow: InfoWindow(title: "Plastic Garbage Found in Laurelwood"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));
}
