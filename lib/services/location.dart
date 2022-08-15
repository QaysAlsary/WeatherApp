
import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude,longtiude;
  Future <void> getCurrentLocation()async{
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude= position.latitude;
      longtiude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}