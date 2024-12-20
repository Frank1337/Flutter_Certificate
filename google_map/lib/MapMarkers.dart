import 'package:google_maps_flutter/google_maps_flutter.dart';

Marker cnTowerMarker = Marker(
  markerId: MarkerId("CN Tower"),
  position: LatLng(43.6426, -79.3871),
  infoWindow: InfoWindow(title: "Toronto Tower"),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
);
