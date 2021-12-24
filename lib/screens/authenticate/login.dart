/*RIHAB*/
import 'package:flutter/material.dart';
import 'package:flutter_login_app/screens/authenticate/signup.dart';
import 'package:flutter_login_app/services/auth.dart';
class identify extends StatefulWidget {
  final Function toggleView;
  identify({this.toggleView});

  @override
  State<StatefulWidget> createState() {
    return _identifystate();
  }
}

class _identifystate extends State<identify> {
 
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';
  String error = 'ERROR';
  final _formkey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "CureTime",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red[700],
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900,
                ),
              ),
              //color: Colors.blue,
              //margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            ),
            const SizedBox(height: 40),
            Form(
             
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: 280,
                    height: 260,
                    color: Colors.grey[700],
                    child: Column(
                      children: [
                        Container(
                            height: 50,
                            margin:const EdgeInsets.fromLTRB(20, 50, 20, 10),
                            child: TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? 'enter e-mail' : null,
                              decoration: const InputDecoration(
                                  labelText: "E-mail address",

                                  labelStyle: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                  hintText: "Enter E-mail",
                                  hintStyle: TextStyle(
                                      fontSize: 11, color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  fillColor: Color.fromRGBO(182, 182, 182, 22),
                                  filled: true),
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                            
                            )),
                        Container(
                            height: 50,
                            margin:const EdgeInsets.fromLTRB(20, 10, 20, 30),
                            child: TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? 'verify password' : null,
                              decoration:const InputDecoration(
                                  labelText: "password",
                                  labelStyle: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                  hintText: "Enter password",
                                  hintStyle: TextStyle(
                                      fontSize: 11, color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  fillColor: Color.fromRGBO(182, 182, 182, 22),
                                  filled: true),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                             onChanged: (val) {
                                setState(() => password = val);
                              },
                            )),
                        Container(
                          child: ElevatedButton(
                            onPressed: () async {
                              if (_formkey.currentState.validate()) {
                                dynamic result =await _auth.signInWithEmailAndPassword(
                                        email, password);
                                if (result == null) {
                                  setState(() =>
                                      error = 'please supply valid email');
                                }
                              }
                            },
                            child:const Text("login"),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.fromLTRB(50, 5, 50, 5))),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin:const EdgeInsets.fromLTRB(10, 60, 10, 0),
              child:const Text(
                "You do not have an account?",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
                child: TextButton(
               onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => inscrit()),);
                
              },
              child:const Text("sign up"),
              style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white)),
            )),
            Container(
              child: Text(
                error,
                style:const TextStyle(color: Colors.white),
              ),
            )
          ],
        )),
      ),
    );
  }
}