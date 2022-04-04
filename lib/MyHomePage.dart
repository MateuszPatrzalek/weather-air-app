import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_air_app/AirScreen.dart';
import 'package:weather_air_app/WeatherScreen.dart';

class MyHomePage extends StatefulWidget {

  MyHomePage({required this.weather});

  final Weather weather;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 1;
  var screens;

  @override
  void initState() {
    screens = [
      AirScreen(),
      WeatherScreen(weather: widget.weather),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 38,
        currentIndex: _currentIndex,
        onTap: (index) => setState(()=>_currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.air), label: "Powietrze"),
          BottomNavigationBarItem(
              icon: Icon(Icons.wb_cloudy_outlined), label: "Pogoda")
        ],
      ),
    );
  }
}