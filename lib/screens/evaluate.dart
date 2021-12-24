import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Evaluation extends StatefulWidget {
  const Evaluation({Key? key}) : super(key: key);

  @override
  _EvaluationState createState() => _EvaluationState();
}

class _EvaluationState extends State<Evaluation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                width: 200,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    //icon: Icon(Icons.person),
                    hintText: 'Coach Name',
                    labelText: 'Coach Name',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Give your opinion",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            child: TextFormField(
              maxLines: 10,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ),
          SizedBox(height: 50,),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.red,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          SizedBox(height: 50,),
                            RaisedButton(onPressed: (){},child: Text('Submit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),color: Colors.red,)

        ],
      ),
    );
  }
}
