
import 'package:flutter/material.dart';
import 'package:weather_app/services/weather.dart';

import 'location_screen.dart';


class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);


  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getlocationData();
  }

  void getlocationData() async {
  WeatherModel weatherModel = WeatherModel();
 var weatherData= await weatherModel.getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather: weatherData,);
    }));

  }


  // var longtiude= jsonDecode(data)['coord']['lon'];
  // var weatherDescription=jsonDecode(data)['weather'][0]['description'];
  // print(weatherDescription);
  // print(longtiude);




  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      )
    );
  }
}
