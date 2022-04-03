import 'package:flutter/material.dart';
import 'package:weather_air_app/AirScreen.dart';
import 'package:weather_air_app/WeatherScreen.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  final screens = [
    AirScreen(),
    WeatherScreen(),
  ];

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