/*RIHAB*/
import 'package:flutter_login_app/screens/authenticate/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/screens/authenticate/signup.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  // ignore: non_constant_identifier_names
  bool ShowSignIn = true;
  void toggleView() {
    setState(() => ShowSignIn = !ShowSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (ShowSignIn) {
      return identify(toggleView: toggleView);
    } else {
      return inscrit(toggleView: toggleView);
    }
  }
}