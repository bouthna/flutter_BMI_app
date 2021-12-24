/*RIHAB*/
import 'package:flutter_login_app/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_app/screens/authenticate/login.dart';
import 'package:flutter_login_app/screens/home/home.dart';
import 'package:flutter_login_app/services/auth.dart';

class inscrit extends StatefulWidget {
  final Function toggleView;
  inscrit({this.toggleView});

  @override
  State<StatefulWidget> createState() => inscritstate();
}

class inscritstate extends State<inscrit> {
  final AuthService _auth = AuthService();

  String email = '';
  String name = '';
  String password = '';
  final _formkey = GlobalKey<FormState>();
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          TextButton.icon(
               style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text('sign in'))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "Cure Time",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.red[700],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
              ),
              SizedBox(height: 40),
              Form(
                key: _formkey,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 280,
                      height: 400,
                      color: Colors.grey[700],
                      child: Column(
                        children: [
                          Container(
                              height: 50,
                              margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
                              child: TextFormField(
                                validator: (val) =>
                                    val.isEmpty ? 'Enter name' : null,
                                decoration: InputDecoration(
                                    labelText: "User Name",
                                    labelStyle: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                    hintText: "Enter your name",
                                    hintStyle: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    fillColor:
                                        Color.fromRGBO(182, 182, 182, 22),
                                    filled: true),
                                keyboardType: TextInputType.text,
                                onChanged: (val) {
                                  setState(() => name = val);
                                },
                              )),
                          Container(
                              height: 50,
                              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: TextFormField(
                                validator: (val) => val.length < 6
                                    ? 'Enter password more than 6 caracters'
                                    : null,
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    fillColor:
                                        Color.fromRGBO(182, 182, 182, 22),
                                    filled: true),
                                keyboardType: TextInputType.visiblePassword,
                                onChanged: (val) {
                                  setState(() => password = val);
                                },
                                obscureText: true,
                              )),
                          Container(
                              height: 50,
                              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: TextFormField(
                                validator: (val) => val.isEmpty
                                    ? 'verify password'
                                    : null,
                                decoration: InputDecoration(
                                    labelText: "Password(verification)",
                                    labelStyle: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                    //hintText: "Enter password",
                                    //hintStyle: TextStyle(fontSize: 11, color: Colors.black54),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    fillColor:
                                        Color.fromRGBO(182, 182, 182, 22),
                                    filled: true),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              )),
                          Container(
                              height: 50,
                              margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
                              child: TextFormField(
                                validator: (val) =>
                                    val.isEmpty ? 'Enter Email' : null,
                                decoration: InputDecoration(
                                    labelText: "Email adress",
                                    labelStyle: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                    hintText: "Enter Email",
                                    hintStyle: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    fillColor:
                                        Color.fromRGBO(182, 182, 182, 22),
                                    filled: true),
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                                //obscureText: true,
                              )),
                          Container(
                            child: ElevatedButton(
                              onPressed: () async {
                                if (_formkey.currentState.validate()) {
                                  dynamic result =
                                      await _auth.registerWithEmailAndPassword(
                                          email, password);

                                  if (result == null) {
                                    setState(() =>
                                        error = 'please supply valid email');
                                  } else {
                                    return HomePage();
                                  }
                                }
                              },
                              child: Text("register"),
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.red[700]),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.fromLTRB(50, 5, 50, 5))),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}