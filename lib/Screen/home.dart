import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../widget/my_drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: MyDrawer(
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlue,
                  Colors.blueAccent,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              )
          ),
        ),
        title: const Text('Home', style: TextStyle(fontSize: 50),),
        centerTitle: true,
      ),
      body: Container(
      width: double.infinity,
        color:Colors.white,
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const SizedBox(),
        Hero(
          tag: 'logoAnimation',
          child: Image.asset(
            'assets/images/home1.PNG',height: 190,width: 350,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height:40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Explore',style: const TextStyle(color: Colors.black,fontSize: 29)),
          ],
        ),
              const SizedBox(height:70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/graduation.png',
                        height: 100,
                        width: 100,

                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/Course");
                        },
                        child: Text(
                          "Course",
                          style: TextStyle(fontSize: 25 , color: Colors.white ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Image.asset('assets/images/teacher.png',
                        height: 100,
                        width: 100,

                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/Teacher");
                        },
                        child: Text(
                          "Teacher",
                          style: TextStyle(fontSize: 25 , color: Colors.white ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

        ]
      ),

        )

    );
  }
  }
