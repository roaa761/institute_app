import 'package:flutter/material.dart';
import 'package:institute_app/Screen/addcourse.dart';
import 'package:institute_app/Screen/chats_screen.dart';
import 'package:institute_app/Screen/maths.dart';
import 'package:institute_app/Screen/notifications.dart';
import 'package:institute_app/Screen/profile.dart';
import 'package:institute_app/Screen/teacher.dart';
import 'package:institute_app/sqglite.dart';

import 'Screen/forgot password.dart';
import 'Screen/login.dart';
import 'Screen/signup.dart';
import 'Screen/welcome.dart';
import 'Screen/course.dart';
import 'Screen/home.dart';
import 'Screen/auth_screen.dart';
import 'Screen/aboutus.dart';
import 'Screen/teacher.dart';
import 'Screen/teachers.dart';
import 'Screen/notifications.dart';
import 'Screen/chats_screen.dart';
import 'Screen/settings.dart';
import 'Screen/chemistry.dart';
import 'Screen/addcourse.dart';
import 'Screen/addteacher.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';



Future<void> main() async {
  runApp(MyApp());
// try opening (will work if it exists)
// Check if we have an existing copy first

  }
class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
    "/" : (context) => const Welcome(),
        "/Login" : (context) =>  Login(),
      "/Signup" : (context) =>  Signup(),
      "/Course" : (context) =>  Course(),
      "/Home" : (context) => const Home(),
      "/Aboutus" : (context) => const Aboutus(),
      "/AuthScreen" : (context) => const AuthScreen(),
      "/Teacher" : (context) => Teacher(),
      "/Teachers" : (context) => const Teachers(),
      "/Notifications" : (context) => Notifications(),
      "/ChatsScreen" : (context) =>  ChatsScreen(),
      "/Settings" : (context) =>  Settings(),
      "/ForgotPassword" : (context) =>  ForgotPassword(),
      "/Maths" : (context) =>  Maths(),
      "/Chemistry" : (context) =>  Chemistry(),
      "/addcourse" : (context) =>  AddCourse(),
      "/addteacher" : (context) => AddTeacher(),





    },
        );
    }
        }