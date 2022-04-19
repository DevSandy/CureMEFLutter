import 'package:curememobile/Utils/Colors_cure_me.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height/2,
            width: width,
            decoration: new BoxDecoration(
              color: Colors_cureme.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(width/width)
              )
            ),
          )
        ],
      ),
    );
  }
}
