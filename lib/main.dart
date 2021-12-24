/*RIHAB*/
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_login_app/screens/authenticate/authenticate.dart';
import 'package:flutter_login_app/screens/authenticate/login.dart';
import 'package:flutter_login_app/screens/home/home.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: 
      ThemeData(

        primarySwatch: Colors.orange,
      ),
       home: 
       AnimatedSplashScreen(
        duration: 900,
        splashIconSize: 150,
        splash: Image.asset(
          'assets/images/logo.png',
        ),
        nextScreen:  HomePage(),
        /*Mission('Roaming Badge', 'assets/1.png', 'assets/1etoile.png', [
          'Prepares a list of the equipment necessary to perform a cellular output',
          'Prepares report on a trip or a trip to another city is prepared with pictures',
          'Participates in a cellular trip in which he travels at least 4 km on foot',
          'Prepares a special notebook for scouting trips and camps'
        ]),*/
        splashTransition: SplashTransition.scaleTransition,
    
    
    )
    );
    
   
  }
}

