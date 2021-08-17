import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:users_prog/module/data.dart';

class MapSample extends StatefulWidget {
  Geo cords;
  MapSample(this.cords);
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {



  Completer<GoogleMapController> _controller = Completer();

   CameraPosition _KAddress ;
  @override
  void initState() {
    super.initState();
    _KAddress =   CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(double.parse(widget.cords.lat),double.parse(widget.cords.lng)),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _KAddress,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}