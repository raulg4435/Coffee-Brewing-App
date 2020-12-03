import 'package:flutter/material.dart';
import 'package:homebrew_dripper/screens/recipe_selection_screen.dart';
import 'dart:async';
import 'package:homebrew_dripper/utils/styling.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 1);
    return Timer(duration, navigateToDeviceScreen);
  }

  navigateToDeviceScreen() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => RecipeSelectionScreen()));
  }

  Styling s = Styling();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: s.primary(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "HOMEBREW",
            style: s.title(Color(0xFFFFFFFF), 48),
          ),
          Text(
            "Handmade Coffee",
            style: s.subtitle(Color(0xFFFFFFFF), 18),
          )
        ],
      )),
    );
  }
}
