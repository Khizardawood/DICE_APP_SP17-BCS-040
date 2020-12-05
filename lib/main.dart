import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:sp17bcs040/homepage.dart';

void main() {
  runApp(Splashscreen());
}

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
          seconds: 9,
          navigateAfterSeconds: homepage(),
          backgroundColor: Colors.black,
          title: Text("Rolling Dice",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color.fromARGB(225, 251, 221, 76))),
          image: Image.asset('Images/dice.png'),
          photoSize: 60.0,
          loaderColor: Color.fromARGB(225, 251, 221, 76)),
      debugShowCheckedModeBanner: false,
    );
  }
}
