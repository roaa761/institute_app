// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sqglite.dart';
import 'appbar.dart';
enum Gender {admin,users,}
class Login extends StatelessWidget {

  SqlDb sqlDb = SqlDb();
  Gender?_gender = Gender.admin;

  bool get value => value;

  late String userType;
  Future<List<Map>> readDate() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM users");
    print("&&&&&&&&&&&&&&&&&&&&&&&&&&&");
    print(response.length);
    return response;
  }
  read() async {
    await readDate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
        Stack(
        children: <Widget>[
        Container(
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
      ),
      Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        SizedBox(height: 65),
        Text(
          'Hello!',
          style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2),
        ),
        Hero(
          tag: 'logoAnimation',
          child: Image.asset(
            'assets/images/logo.png',
            height: 250,
          ),
        ),
          SizedBox(
            height: 35,
          ),
          Center(
          child: TextField(
            decoration: InputDecoration(
                labelText: 'Enter your email',
                hintText: 'ex: test@gmail.com',
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)),
              prefixIcon: Icon(Icons.email,color: Colors.black45,),
            ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Enter your Passward',
                  suffixIcon: Icon(Icons.visibility_off,color: Colors.black45,),
                  border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.lock,color: Colors.black45,),
                ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/Home");
            },
            child: Text(
              "Login",
              style: TextStyle(fontSize: 25 , color: Colors.white ),
            ),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              shadowColor: Color(0xFFF5F6F9),
            ),
          ),
          SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           GestureDetector(
               onTap: () {Navigator.pushNamed(context, '/ForgotPassword');},
               child: Text("Forgot Password ?", style: TextStyle(fontWeight: FontWeight.bold))),
         ],),
         SizedBox(height: 20,),
           GestureDetector(
             onTap: () {Navigator.pushNamed(context, '/Signup');},
               child: Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black45,fontSize: 15))),
            ],

         ),

      ),
       ],
    ),
    ],
    ),

    ),
    );

  }
}
