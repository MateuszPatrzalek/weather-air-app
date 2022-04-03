import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_air_app/MyHomePage.dart';
import 'package:weather_air_app/PermissionScreen.dart';
import 'package:weather_air_app/main.dart';

class WeatherScreen extends StatefulWidget {
  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              color: Color(0xffffffff),
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Color(0xff6e6cd8), Color(0xff77e1ee)])),
        ),
        Align(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(image: AssetImage('icons/cloud-sun.png')),
              const Padding(padding: EdgeInsets.only(top: 15.0)),
              Text(Strings.appTitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 42.0,
                    color: Colors.white,
                  ))),
              const Padding(padding: EdgeInsets.only(top: 5.0)),
              Text(
                'Pogoda',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                )),
              )
            ],
          ),
        ),
        Positioned(
            left: 0,
            bottom: 35,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              child: Text("Przywiewam dane...",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18.0,
                    color: Colors.white,
                  ))),
            ))
      ]),
    );
  }

  bool havePermission() {
    return true;
  }
}
