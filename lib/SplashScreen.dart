import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_air_app/MyHomePage.dart';
import 'package:weather_air_app/PermissionScreen.dart';
import 'package:weather_air_app/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 2),
        () => {
              if (havePermission())
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PermissionScreen()))
                }
              else
                {
                  //todo load data
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()))
                }
            });

    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Color(0xffffffff),
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Color(0xff6671e5), Color(0xff4852d9)])),
        ),
        Align(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('icons/cloud-sun.png')),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Text(Strings.appTitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 42.0,
                    color: Colors.white,
                  ))),
              Padding(padding: EdgeInsets.only(top: 5.0)),
              Text(
                'Aplikacja do monitorowania \n czystości powietrza',
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
