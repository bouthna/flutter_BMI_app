import 'package:flutter/material.dart';

class Exercice extends StatefulWidget {
  const Exercice({ Key? key }) : super(key: key);
  // ignore: non_constant_identifier_names
 

  @override
  _ExerciceState createState() => _ExerciceState();
}
 Widget Ex({required String text,required String image, required double scale}) {
    return Container(
      child: Row(children: [
        SizedBox(
          width: 10,
        ),
        Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(
          width: 40,
        ),
         Image.network(image,scale: scale,),


      ],)
    );
  }

class _ExerciceState extends State<Exercice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
          height: 100,
        ),
          Ex(text:'Exercice 1',image:'https://news.gympass.com/wp-content/uploads/2017/11/Les-5-exercices-de-sport.jpg',scale: 8),
          SizedBox(
          height: 100,
        ),
          Ex(text:'Exercice 2',image:'https://img-3.journaldesfemmes.fr/AKIZteCanLBIQM3HF7EMtgZyxrE=/1500x/smart/e3589efd1f9d41bba67d70335fb075d8/ccmcms-jdf/14874010-adobestock-267377698.jpg',scale: 6),
          SizedBox(
          height: 100,
        ),
          Ex(text:'Exercice 3',image:'https://www.bienetre-et-sante.fr/wp-content/uploads/2016/10/NL48_FITNESS.jpg',scale: 3.4),
        ],
      )
      
    );
  }
}