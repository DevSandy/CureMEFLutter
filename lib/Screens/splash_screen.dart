import 'dart:async';

import 'package:curememobile/Utils/Colors_cure_me.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => LoginScreen())));
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
              top: 15,
              child: Container(
                  child: Image.asset('assets/images/pattern.png'))),
          Positioned(
            top: height/4,
            left: width/3,
            child: Container(
              child: Center(
                child: CircleAvatar(
                    radius:width/4,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset('assets/images/logo.png',),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
