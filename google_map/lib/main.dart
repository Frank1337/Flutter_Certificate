import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'MapMarkers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final LatLng _location = const LatLng(45.521563, -122.677433);
  late GoogleMapController mapController;

  void _myMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final CameraPosition _niagaraFalls = CameraPosition(
    target: LatLng(43.0807790, -79.0785500),
    bearing: 45.0,
    tilt: 50,
    zoom: 14.0,
  );

  Future<void> _goToNiagaraFalls() async {
    final GoogleMapController controller = mapController;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(_niagaraFalls),
    );
  }

  void getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    final CameraPosition MyLocation = CameraPosition(
      target: LatLng(position.latitude, position.longitude),
      bearing: 45.0,
      tilt: 50,
      zoom: 11,
    );

    setState(() {
      mapController.animateCamera(CameraUpdate.newCameraPosition(MyLocation));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps Sample App'),
        ),
        body: GoogleMap(
          mapType: MapType.hybrid,
          markers: {cnTowerMarker},
          onMapCreated: _myMapCreated,
          initialCameraPosition: CameraPosition(target: _location, zoom: 13.0),
        ),
        floatingActionButton: Column(
          children: [
            FloatingActionButton.extended(
              onPressed: _goToNiagaraFalls,
              label: Text('Go to Niagara Falls'),
              icon: Icon(Icons.directions_boat),
            ),
            SizedBox(height: 10),
            FloatingActionButton.extended(
              onPressed: getCurrentLocation,
              label: Text('Current Location'),
              icon: Icon(Icons.location_on),
            ),
          ],
        ),
      ),
    );
  }
}
