import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;
  onChangeFunction1(bool newValue1) {
    void setState;( () {
      valNotify1 = newValue1;
    });
  }
  onChangeFunction2(bool newValue2) {
    setState( () {
      valNotify1 = newValue2;
    });
  }
  onChangeFunction3(bool newValue3) {
    setState( () {
      valNotify1 = newValue3;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            SizedBox(height: 40,),
            Row(
              children: const [
                Icon(Icons.person, color: Colors.blue,),
                SizedBox(width: 10,),
                Text("Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),

            const SizedBox(height: 20,),
        buildAccountOption(context, "Change Password"),
            buildAccountOption(context, "Language"),
            buildAccountOption(context, "Privacy & Security"),
            buildAccountOption(context, "Terms & Condition"),
            buildAccountOption(context, "Sign Out"),
            SizedBox(height: 40,),
            Row(
              children: [
              Text("More",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)],
            ),
            SizedBox(height: 10,),
            buildMoreOption("Notification", valNotify1, onChangeFunction1),
            buildMoreOption("Dark Mode", valNotify2, onChangeFunction2),
            buildMoreOption("Location", valNotify3, onChangeFunction3),
          ],
        ),
      ),
    );
  }
  Padding buildMoreOption(String title, bool value, Function onChangeMethod) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.grey[600]),),
        Transform.scale(scale: 0.7,
            child: CupertinoSwitch(activeColor: Colors.blue,trackColor: Colors.grey,
            value: value,
            onChanged: (bool newValue) {
              onChangeMethod(newValue);
            },),)
      ],
    ),);
  }
    GestureDetector buildAccountOption(BuildContext context,String title) {
      return GestureDetector(

        onTap: () {
          showDialog(context: context, builder:(BuildContext context) {
            return AlertDialog(title: Text(title),
            content: Column(
            mainAxisSize:  MainAxisSize.min,
            children: [Text('Option 1'),
            Text('Option 1'),],
            ),
              actions: [TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text('Close'))],
            );
          });
        },
        child: Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.grey[600],),),
            Icon(Icons.arrow_forward_ios)
            
          ],
        ),),
      );
    }



    // ignore: dead_code


  }

void setState(Null Function() param0) {
}

