import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    getLocation();
  }

  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.low,
    // distanceFilter: 100,
  );

  void getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position =
        await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
