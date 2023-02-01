import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black54,
      child: ListView(
        children: [
          //header
       Container(
         padding: EdgeInsets.only(top: 26,bottom: 14),
         child: Column(
           children: const [
             //user profile image
             SizedBox(
               height: 140, width: 140,
               child: CircleAvatar(backgroundImage:AssetImage('assets/images/111.JPG'),
              
         ),
               ),
             SizedBox(height: 12,),
             Text("Hala Alledawe",style: TextStyle(color: Colors.grey,fontSize: 20, fontWeight: FontWeight.bold),),
           ],
         ),
       ),

          //body
          Container(
            padding: EdgeInsets.only(top: 1),
            child: Column(
              children: [
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                //home
                ListTile(leading: Icon(Icons.home,color: Colors.grey,),
                title: Text('Home',style: TextStyle(color: Colors.grey),),
                  onTap: () {Navigator.pushNamed(context, "/Home");},
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(leading: Icon(Icons.notifications,color: Colors.blue,),
                  title: Text('Notifications',style: TextStyle(color: Colors.grey),),
                  onTap: () {Navigator.pushNamed(context, "/Notifications");},
                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(leading: Icon(Icons.album_outlined,color: Colors.green,),
                  title: Text('About us',style: TextStyle(color: Colors.grey),),
                  onTap: () {Navigator.pushNamed(context, "/Aboutus");},
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(leading: Icon(Icons.chat,color: Colors.teal,),
                  title: Text('Chat',style: TextStyle(color: Colors.grey),),
                  onTap: () {Navigator.pushNamed(context, "/ChatsScreen");},
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(leading: Icon(Icons.settings,color: Colors.pink,),
                  title: const Text('Settings',style: TextStyle(color: Colors.grey),),
                  onTap: () {Navigator.pushNamed(context, "/Settings");},
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(leading: Icon(Icons.history,color: Colors.teal,),
                  title: Text('History',style: TextStyle(color: Colors.grey),),
                  onTap: () {Navigator.pushNamed(context, "/Course");},
                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(leading: Icon(Icons.golf_course,color: Colors.purple,),
                  title: Text('My Course',style: TextStyle(color: Colors.grey),),
                  onTap: () {Navigator.pushNamed(context, "/Course");},
                ),

                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(leading: Icon(Icons.delete,color: Colors.red,),
                  title: Text('Delete',style: TextStyle(color: Colors.grey),),
                  onTap: () {},
                ),
                const Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(leading: Icon(Icons.account_circle_rounded,color: Colors.red,),
                  title: Text('Teacher',style: TextStyle(color: Colors.grey),),
                  onTap: () {Navigator.pushNamed(context, "/Teacher");},
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

}
