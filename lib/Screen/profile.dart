import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:institute_app/Screen/appbar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
        Stack(
        children: <Widget>[
        Container(
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(200),
            bottomRight: Radius.circular(200),
          ),
        ),
      ),
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 70),
            const Text(
              'profile',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2),
            ),
            const SizedBox(height: 70),
            Center(
              child: Container(
                child: Column(
                  children: [
                 GestureDetector(
                   onTap: () {

                   },
                   child: CircleAvatar(
                     radius: MediaQuery.of(context).size.width *0.15,
                     backgroundColor: Colors.white,
                     child: Icon(
                       Icons.add_photo_alternate,
                       color: Colors.grey,
                       size: MediaQuery.of(context).size.width*0.15,
                     ),
                   ),
                 )
                  ],
                ),
              ),
            ),
                const SizedBox(height: 30),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Column(
                  children: const [
                  Text("Hala Alledawe", style: TextStyle(color: Colors.lightBlue,fontSize: 20),),
                  Text("hala_123@gmail.com", style: TextStyle(color: Colors.black,fontSize: 25),),
        ],
                ),
      ],
      ),
                ),
          ],
        ),
      ),
          const SizedBox(height:30 ,),
          ElevatedButton(onPressed: () {},
              child: const Text(
                "My Account",style: TextStyle(color: Colors.black,fontSize: 20),
              ),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              shadowColor: const Color(0xFFF5F6F9),
          ),
          ),
      SizedBox(height:30 ,),
      ElevatedButton(onPressed: () {},
        child: const Text(
          "My Account",style: TextStyle(color: Colors.black,fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: const Color(0xFFF5F6F9),
        ),
      ),
      SizedBox(height:30 ,),
      ElevatedButton(onPressed: () {Navigator.pushNamed(context, "/AuthScreen");},
        child: const Text(
          "Notifications",style: TextStyle(color: Colors.black,fontSize: 20,),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: const Color(0xFFF5F6F9),
        ),
      ),
      SizedBox(height:30 ,),
      ElevatedButton(onPressed: () {},
        child: const Text(
          "About us",style: TextStyle(color: Colors.black,fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: const Color(0xFFF5F6F9),
        ),
      ),
      SizedBox(height:30 ,),
      ElevatedButton(onPressed: () {},
        child: const Text(
          "Setting",style: TextStyle(color: Colors.black,fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: const Color(0xFFF5F6F9),
        ),
      ),
      SizedBox(height:30 ,),
      ElevatedButton(onPressed: () {},
        child: const Text(
          "Delete",style: TextStyle(color: Colors.black,fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: const Color(0xFFF5F6F9),
        ),
      ),
            ],
                  )
                ],
              ),

            ),
    );
  }
}

