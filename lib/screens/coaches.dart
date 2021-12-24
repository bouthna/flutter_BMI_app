import 'dart:ui';

import 'package:flutter/material.dart';

class Coaches extends StatefulWidget {
  const Coaches({ Key? key }) : super(key: key);

  @override
  _CoachesState createState() => _CoachesState();
}
 Widget Coach({required String title,required String image, required String phone, required double scale}) {
    return Center(
      child: Container(
        width: 300,
        height: 150,
        color: Colors.grey,
        child: Row(children: [
          SizedBox(
            width: 10,
          ),
          Image.network(image,scale:scale,),
          SizedBox(width: 50,),
          Column(
            children: [
              SizedBox(height: 20,),
              Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 35,
              ),
              Text(phone),
            ],
            
          )
           
    
    
        ],)
      ),
    );
  }

class _CoachesState extends State<Coaches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:80),
                    Coach(title: 'Coach 1',image: 'https://www.superprof.fr/images/annonces/professeur-home-coach-sportif-personnel-bruxelles-woluwe-fitnastic-alentours.jpg',phone: 'Telephone Number',scale: 2.7),
                     SizedBox(height:40),
                    Coach(title: 'Coach 2',image: 'https://cdn-uploads-frankfurt.starofservice.com/uploads/pj/thumbs-medium/starofservice_14890romaindolecarre.jpg',phone: 'Telephone Number',scale: 3.3),
                     SizedBox(height:40),
                    Coach(title: 'Coach 3',image: 'https://static.wixstatic.com/media/4d621c_b87645c9c8f34f5594e043cdc3acf059~mv2.jpg/v1/fill/w_540,h_540,al_c,q_80,usm_0.66_1.00_0.01/Coach_sportif_isabelle_marand_isa_sport_.webp',phone: 'Telephone Number',scale: 4.7),
                     SizedBox(height:40),
                  Coach(title: 'Coach 4',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkZ8eVFXyoPOwtjEqL3nbRnLUAiHuOeaJxcwitLxN-Bh6WvO2B0RR6bJuSWRJ6tcTdPLU&usqp=CAU',phone: 'Telephone Number',scale: 2),
                  SizedBox(height:20),
                  RaisedButton(onPressed: (){
                    Navigator.pushNamed(context, '/eval');
                  },child: Text('Evaluate',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)
      
          ],
      
        ),
      ),
    );
  }
}