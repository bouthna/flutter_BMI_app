/*RIHAB*/
import 'package:flutter/material.dart';
import 'package:flutter_login_app/screens/authenticate/login.dart';
import 'package:flutter_login_app/screens/authenticate/signup.dart';
import 'package:flutter_login_app/models/user.dart';
import 'package:flutter_login_app/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login_app/services/auth.dart';
import 'package:flutter_login_app/screens/authenticate/authenticate.dart';
class HomePage extends StatelessWidget {
  final AuthService _auth = AuthService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.person_outline),
          onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
            return identify();
          })),
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        actions: [
          TextButton.icon(
              style: ButtonStyle(foregroundColor:MaterialStateProperty.all(Colors.white)),
              onPressed: () async {
                await _auth.signOut();
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
                  return Authenticate();
                }));
              },
              icon: Icon(Icons.person),
              label: Text('sign out'))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
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
              margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
            ),
            SizedBox(height: 20,width: 25,),
            Container(
              margin: EdgeInsets.symmetric(),
              child: Image.asset("assets/images/welcome.gif"),
            ),
            SizedBox(height: 30.0,width: 25),
            Container(
              child: Text(
                "want to get a perfect body?\n"
                "Look no further, with CureTime you will enjoy a total follow-up of your weight with various exercises to practice and why not choose qualified coaches to supervise you, motivate you and support you.\n"
                "Test without delay in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            ),
            Container(
              child: TextButton(
                child: Text("go ahead"),
                onPressed: () {
                  
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Authenticate()),
                  );
                
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.red)
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

              