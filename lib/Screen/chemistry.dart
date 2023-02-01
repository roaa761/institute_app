import 'package:flutter/material.dart';

class Chemistry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Chemistry',style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.blueAccent[400],
        centerTitle: true,
      ), //AppBar
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/chemistry.jpg',height: 300,width: double.infinity,fit: BoxFit.fill,),
            SizedBox(height:16 ,),
            //SizedBox
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Chemistry',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  const Text(
                    'Chemistry Assignment Help',style: TextStyle(fontSize: 30,color: Colors.black), //Textstyle
                  ),
                  SizedBox(
                    height: 10,),
                  Text('Mainly chemistry is divide into organic and inorganic chemistry,'
                      ' Organic chemistry includes the compounds which is composed on carbon skeleton and are hydrocarbons.',
                    style: TextStyle(color: Colors.black45,fontSize: 25),),//Text
                  SizedBox(
                    height: 30,),
                     ElevatedButton(
                      onPressed: () {},
                        child:
                            Text('Sign up'),
                        ),
                ],
              ),
            ),
    );
  }
}
