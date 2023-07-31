import 'dart:convert';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;

import '../countries Data/single_country_screen.dart';

class myCountryScreen extends StatefulWidget {
  const myCountryScreen({super.key});

  @override
  State<myCountryScreen> createState() => _myCountryScreenState();
}

class _myCountryScreenState extends State<myCountryScreen> {



  var data;
  List<String> coordinates = [];

  Future<void> geolocator()async{

    LocationPermission permission = await Geolocator.requestPermission();

    if(permission ==LocationPermission.denied){
      print('Permission Denied');
    }
    else if(permission== LocationPermission.deniedForever){
      print('Denied always');
    }
    else{
      final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      coordinates.add(position.latitude.toString());
      coordinates.add(position.longitude.toString());



      List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);



        final response = await http.get(Uri.parse("https://disease.sh/v3/covid-19/countries/${placemarks[3].country.toString()}"));


        if(response.statusCode == 200) {
          data = jsonDecode(response.body.toString());
          String name = data['country'].toString();
          String flag = data['countryInfo']['flag'].toString();
          String totalCases = data['cases'].toString();
          String totalDeaths = data['deaths'].toString();
          String totalRecovered = data['recovered'].toString();
          String totalActiveCases = data['active'].toString();
          String totalTestPerformed = data['tests'].toString();
          String criticalPatients = data['critical'].toString();

       Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleCountryScreen(name, flag, totalCases, totalDeaths, totalRecovered, totalActiveCases, totalTestPerformed, criticalPatients)));


        }
        else{
          print('api Not hit');
        }









    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     geolocator();

  }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body : Center(
          child: Lottie.asset(
            height:140,
              "assets/images/loading.json"
          ),
        )
    );
  }
}
