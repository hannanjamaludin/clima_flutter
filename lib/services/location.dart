import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.low,
    // distanceFilter: 100,
  );

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
