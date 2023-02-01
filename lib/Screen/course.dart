import 'dart:async';

import 'package:flutter/material.dart';
import 'package:institute_app/sqglite.dart';
class Course extends StatelessWidget {

  SqlDb sqlDb = SqlDb();

  get or => null;
  Future<List<Map>> readDate() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM product course"

    );
    print("&&&&&&&&&&&&&&&&&&&&&&&&&&&");
    print(response.length);
    return response;
  }

  late String _now;

// ignore: non_constant_identifier_names
  late Timer _everySecond;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Course",style: TextStyle(fontSize: 30),),
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: () {Navigator.pushNamed(context, "/Home");},),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.notifications,color: Colors.white,),)],
        centerTitle: true
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.pushNamed(context, "/addcourse");},
        child: Icon(Icons.add),
      ),
      body: Container(
      padding: EdgeInsets.all(30),
      child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing:10),
        children: [
          Card(
          child:InkWell(
          onTap: ( ) {Navigator.pushNamed(context, '/Maths');},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image.asset('assets/images/math.png',height: 80,width: 80,),
                SizedBox(height: 20,),
                Text('Maths'),
              ],
            ),
          ),
    ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/science.png',height: 80,width: 80,),
                const SizedBox(height: 20,),
                Text('Sciences'),
              ],
            ),
          ),

          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/music.png',height: 80,width: 80,),
                SizedBox(height: 20,),
                Text('Music'),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Image.asset('assets/images/palettes.png',height: 80,width: 80,),
                SizedBox(height: 20,),
                Text('Art'),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Image.asset('assets/images/atom.png',height: 80,width: 80,),
                SizedBox(height: 20,),
                Text('physics'),
              ],
            ),
          ),
          Card(
              child:InkWell(
    onTap: ( ) {},
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/english.png',height: 80,width: 80,),
                SizedBox(height: 20,),
                Text('English'),
              ],
            ),
          ),
    ),
          Card(
          child:InkWell(
          onTap: ( ) {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/france.png',height: 80,width: 80,),
                SizedBox(height: 20,),
                Text('French'),
              ],
            ),
          ),
    ),
          Card(
            child:InkWell(
    onTap: ( ) {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Image.asset('assets/images/sports.png',height: 80,width: 80,),
                SizedBox(height: 20,),
                Text('Sport'),
              ],
            ),
            ),
          ),
          Card(
            child:InkWell(
              onTap: ( ) {Navigator.pushNamed(context, '/Chemistry');},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Image.asset('assets/images/chemistr 1.png',height: 80,width: 80,),
                  SizedBox(height: 20,),
                  Text('Chemistry'),
                ],
              ),
            ),
          ),
        ]
       ),
      ),
    );

  }
}