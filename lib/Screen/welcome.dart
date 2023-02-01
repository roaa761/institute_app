import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color:Colors.lightBlue,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(),
                Hero(
                  tag: 'logoAnimation',
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
             SizedBox(height: 90),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Login");
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 20 , color: Colors.lightBlue ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
