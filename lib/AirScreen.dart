import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_air_app/MyHomePage.dart';
import 'package:weather_air_app/PermissionScreen.dart';
import 'package:weather_air_app/main.dart';

class AirScreen extends StatefulWidget {
  @override
  State<AirScreen> createState() => _AirScreenState();
}

class _AirScreenState extends State<AirScreen> {
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
                  colors: [Color(0xff4acf8c), Color(0xff75EDA6)])),
        ),
        Align(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage('icons/cloud-sun.png'),
                color: Colors.black,
              ),
              const Padding(padding: EdgeInsets.only(top: 15.0)),
              Text(Strings.appTitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 42.0,
                    color: Colors.black,
                  ))),
              const Padding(padding: EdgeInsets.only(top: 5.0)),
              Text(
                'Powietrze',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
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
