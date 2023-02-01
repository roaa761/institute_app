import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child:Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlue,
                    Colors.blueAccent,
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end:  FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                )
            ),
          ),
          title: const Text('Institute',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs:[
              Tab(
                text: "Course",
                icon: Icon(Icons.golf_course,color: Colors.purple,),
              ),
              Tab(
                text: "Course",
                icon: Icon(Icons.golf_course,color: Colors.purple,),
              ),
            ],
          ),
        ),
      body: Container(
        child: TabBarView(
    children: [

    ],
    ),
      ),
      ),
    );

  }
}
