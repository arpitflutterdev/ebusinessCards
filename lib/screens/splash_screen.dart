import 'package:ebusinesscards/utils/colors.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours().splashScreenColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child:
          Center(
            child: Column(
              children: [
                splashWidget("assets/ebc.png"),
                splashWidget("assets/logo.png"),
                ]
            ),
          )
        ),
      ),
    );
  }
  
  
    Widget splashWidget(String filePath){
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(filePath)
        ),
      ),
    );
    }
}
