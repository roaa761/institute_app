import 'package:flutter/material.dart';
import 'package:institute_app/Screen/addcourse.dart';
import 'package:institute_app/Screen/login.dart';
import 'package:institute_app/Screen/settings.dart';
import 'package:institute_app/Screen/teachers.dart';
import 'package:institute_app/main.dart';
import 'package:institute_app/sqglite.dart';
import 'dart:async';

class Teacher extends StatefulWidget {
  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  SqlDb sqlDb = SqlDb();

  get or => null;
  Future<List<Map>> readDate() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM product teacher"

    );
    print("&&&&&&&&&&&&&&&&&&&&&&&&&&&");
    print(response.length);
    return response;
  }

  late String _now;

// ignore: non_constant_identifier_names
  late Timer _everySecond;

@override
// ignore: non_constant_identifier_names
void initState() {
  super.initState();
  //set first value
    _now =
      DateTime.now().second.toString();
  //defines a timer
   _everySecond =
      Timer.periodic(Duration(seconds: 5),
          (Timer t) {
        setState(() {
           _now =
              DateTime.now().second.toString();
        });
          });

}

  @override
  Widget build(BuildContext context) {
  var items;
  return Scaffold(
  appBar: AppBar(title: Text('Teacher',style: TextStyle(fontSize: 30),),
  centerTitle: true,
  ),
  floatingActionButton: FloatingActionButton(
  onPressed: () {Navigator.pushNamed(context, "/addteacher");},
  child: Icon(Icons.add),
  ),
  body: Container(
  child: ListView(
  children: [
  FutureBuilder(
  future: readDate(),
    builder:
    (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
    if (snapshot.hasData) {
    return ListView.builder(
    itemCount: snapshot.data!.length,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
    return Card(
    child: ListTile(
    title: Text(
    "${snapshot
        .data![index]['name']}"),
    subtitle: Text(
    "${snapshot
        .data![index]['title']}"),
    ),);
    });
    }
    return Center(child: const CircularProgressIndicator(),);
    }
    )
      ]
  )
    )
  );
  }
}
