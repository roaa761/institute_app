import 'package:flutter/material.dart';
import 'package:institute_app/Screen/teacher.dart';
import 'package:institute_app/sqglite.dart';
class AddTeacher extends StatefulWidget {
  @override
  _AddTeacherState createState() => _AddTeacherState();
}
SqlDb sqlDb = SqlDb();
GlobalKey<FormState> formstate = GlobalKey() ;
TextEditingController name = TextEditingController() ;
TextEditingController title = TextEditingController() ;
var nameController = TextEditingController();
var titleController = TextEditingController();

class _AddTeacherState extends State<AddTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Teacher'),
      ),
      body: Container(
          child: ListView(
            children: [
              Form(key: formstate,
                child: Column(
                  children: [
                    TextFormField(
                      controller: name,
                      decoration: InputDecoration(hintText: "teacher"),
                    ),
                    TextFormField(
                      controller: title,
                      decoration: InputDecoration(hintText: "title"),
                    ),
                    Container(height: 20,),
                    ElevatedButton(
                      onPressed: () async {
                        int response =  await sqlDb.insertData('''
               INSERT INTO product teacher ('name' , 'type' , 'price')
               VALUES ("${nameController.text}" , "${titleController.text}"  )
               ''');
                        if (response > 0){
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Teacher()),
                                  (route) => false);
                        }
                        print("add");
                      },
                      child: Text("Add Teacher"),

                    )
                  ],
                ),),
            ],

          )
      ),
    );
  }
}