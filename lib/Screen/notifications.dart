import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
 List teacher = [
   {
     "name" : "Booking Successfully.!",
     "Screen" : "you Booked on course math",
   },
   {
     "name" : "You are Just Enroll the Course!",
     "Screen" : "Hello Hala, You have just enroll the Course ",
   },
   {
     "name" : "Tutor Teacher..!",
     "Screen" : "you  Booked on Tutor with T.Maria",
   },
   {
     "name" : "Welcome to Course",
     "Screen" : "Welcome to the Course, we are gold you are hear.",
   },
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
              title: const Text("Notifications",style: TextStyle(fontSize: 30),),
              leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: () {Navigator.pushNamed(context, "/Home");},),
              centerTitle: true
          ),
    body: ListView.builder(
        itemCount: 4,
    itemBuilder: ( context, i) {
      return Container(
        margin: const EdgeInsets.all(50),
        height: 15,
          child: ListTile(
            title: Text("${teacher[i]['name']}",), subtitle: Text("${teacher[i]['Screen']}") ,

        ),
      );
      }
    ),
      );

    }
  }

