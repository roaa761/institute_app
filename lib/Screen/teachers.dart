import 'package:flutter/material.dart';
import 'package:institute_app/Screen/teacher.dart';

class Teachers extends StatelessWidget {
  const Teachers({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher',style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/teacherppp.png',height: 400,width: double.infinity,fit: BoxFit.fill,),
            SizedBox(height:16 ,),
            Text('MARIA ',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
    SizedBox(height: 8,),
    Text(
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    style: TextStyle(
    fontSize: 20,
    ),
    ),
          ],

        ),
      ),
    );
  }
}
