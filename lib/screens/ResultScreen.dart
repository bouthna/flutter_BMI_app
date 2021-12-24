/*BOUTHAINA*/
import 'package:flutter/material.dart';
import 'BMIModel.dart';
import 'BMICalculatorScreen.dart';


class ResultScreen extends StatelessWidget {

  final bmiModel;
  bool own = false;
  bool coa = true;
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,//
          Animation<double> secondaryAnimation) {
        return Nutrition();
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, //
          Animation<double> secondaryAnimation, Widget child) {
        return child;
      },
    );
  }
  ResultScreen({this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(28),
          child: Column(

            children: <Widget>[

              SizedBox(
                height: 8,
              ),
              Text("Your BMI is ${bmiModel.bmi.round()}", style: TextStyle(color: Colors.red[700], fontSize: 34, fontWeight: FontWeight.w700),),
              Text("${bmiModel.comments}", style: TextStyle(color: Colors.grey[700], fontSize: 18, fontWeight: FontWeight.w500),),

              SizedBox(height: 16,),

              bmiModel.isNormal ?
              Text("Hurray! Your BMI is Normal.", style: TextStyle(color: Colors.red[700], fontSize: 18, fontWeight: FontWeight.w700),)
                  :
              Text("Sadly! Your BMI is not Normal.", style: TextStyle(color: Colors.red[700], fontSize: 18, fontWeight: FontWeight.w700),),
              SizedBox(height: 16,),

              Container(
                child: FlatButton.icon(
                  onPressed: (){


                    Navigator.of(context).push(_createRoute());
                  },
                  icon: Icon(Icons.favorite, color: Colors.white,),
                  label: Text("Cnsult nutrition"),
                  textColor: Colors.white,
                  color: Colors.pink,

                ),
                width: double.infinity,
              ),
              CheckboxListTile(
                  value: own,
                  onChanged: (val){},
                  activeColor: Colors.green,
                  title: Text("practise at home")
              ),
              CheckboxListTile(
                  value: coa,
                  onChanged: (val){},
                  activeColor: Colors.green,
                  title: Text("contact a coach")
              ),
            ],
          ),
        ),
    );
  }
}
class Nutrition extends StatelessWidget {

  double _heightOfUser = 100.0;
  double _weightOfUser = 40.0;
  double _bmi=0 ;
  BMIModel? _bmiModel;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/up.PNG"),
          ),
        ),
        child: ListView (
        children: <Widget>[
          ListTile(
            title: Text('apple', style: TextStyle(color: Colors.white)),
            subtitle: Text('apple is good for health', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            title: Text('egg', style: TextStyle(color: Colors.white)),
            subtitle: Text('egg is an excellent source of proteins', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            title: Text('salad', style: TextStyle(color: Colors.white)),
            subtitle: Text('at any time you can eat it', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            title: Text('water', style: TextStyle(color: Colors.white)),
            subtitle: Text('water is essential', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            title: Text('vegetables', style: TextStyle(color: Colors.white)),
            subtitle: Text('grilled vegetables are healthy', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            title: Text('fried food', style: TextStyle(color: Colors.white)),
            subtitle: Text('you haveto avoid fried food', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            title: Text('sugaries', style: TextStyle(color: Colors.white)),
            subtitle: Text('sugaries are not good for health', style: TextStyle(color: Colors.white)),
          ),
        ],
            ),
    ),
      backgroundColor: Colors.black,
      );
  }
}