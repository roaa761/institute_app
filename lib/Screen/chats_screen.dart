import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  get decoration => null;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
        title: Text('Chat',style: TextStyle(fontSize: 30),),
        centerTitle: true,

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.close),
          ),
        ],
    ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.blueAccent,
          width: 2,
                ),
              ),
            ),
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Expanded(child: TextField(onChanged: (value) {},
    decoration: InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20,),
    hintText: 'Write your massage here...',
        border: InputBorder.none
    ),
    ),
           ),
    TextButton( onPressed: () {  },
    child: Text('send',style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold,fontSize: 18,),),)
         ],
         )
            )
          ],
        ),
      ),
      );

  }
}
