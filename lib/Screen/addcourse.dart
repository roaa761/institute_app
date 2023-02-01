import 'package:flutter/material.dart';
import 'package:institute_app/Screen/course.dart';
import 'package:institute_app/sqglite.dart';
class AddCourse extends StatefulWidget {
  @override
  _AddCourseState createState() => _AddCourseState();
}
SqlDb sqlDb = SqlDb();
GlobalKey<FormState> formstate = GlobalKey() ;
TextEditingController course = TextEditingController() ;
TextEditingController title = TextEditingController() ;
var courseController = TextEditingController();
var titleController = TextEditingController();

class _AddCourseState extends State<AddCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Course'),
      ),
      body: Container(
        child: ListView(
          children: [
            Form(
              key:  formstate,
            child: Column(
              children: [
                TextFormField(
                  controller: course,
                  decoration: InputDecoration(hintText: "course"),
                ),
          TextFormField(
          controller: title,
          decoration: const InputDecoration(hintText: "title"),
          ),
                Container(height: 20,),
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () async {
                    int response =  await sqlDb.insertData('''
               INSERT INTO product teacher ('name' , 'type' , 'price')
               VALUES ("${courseController.text}" , "${titleController.text}"  )
               ''');
                    if (response > 0){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Course()),
                              (route) => false);
                    }
                    print("add");
                  },
                   child: const Text("Add Course"),
                )
              ],
            ),),
    ],

    )
      ),
    );

  }
}
