import 'package:flutter/material.dart';

class Maths extends StatelessWidget {
  const Maths({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Math',style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.blueAccent[400],
        centerTitle: true,
      ), //AppBar
      body: Center(
        child: Column(
          children: [
          Image.asset('assets/images/math.jpg',height: 300,width: double.infinity,fit: BoxFit.fill,),
        SizedBox(height:16 ,),
            //SizedBox
              Text(
                'Math',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                ), //Textstyle
              ), //Text
              SizedBox(height: 10,), //SizedBox
               Text(
                'Theoretical Mathematics Education', //Textstyle
            ),
              SizedBox(height: 10,),
                  Text('One way to categorize the theoretical orientations of the research and analyses of the nature of mathem atical cognition,'
                      ' how it is leartn, and how this learning can be optimally enhanced,'
                      'is by referring to the bro ad paradigmatic traditions within psychology and education in genaral:the behaviorisl/empiricist.',
                  style: TextStyle(color: Colors.black45,fontSize: 20),),//Text
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {},
              child:
          Text('Sign up'),

           ), //SizedBox


        ]
                ), //Row
              ), //Padding
             //RaisedButton//SizedBox
      ); //SizedBox

  }
  }

