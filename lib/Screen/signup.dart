import 'package:flutter/material.dart';
import 'package:institute_app/Screen/login.dart';
import 'package:path/path.dart';


import '../sqglite.dart';

class Signup extends StatelessWidget {
   Signup({Key? key}) : super(key: key);
   var emailController = TextEditingController();
   var nameController = TextEditingController();
   var passwordController = TextEditingController();
   var mobilemamberController = TextEditingController();
   SqlDb sqlDb = SqlDb();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 65),
                        const Text(
                          'Sing up!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2),
                        ),
                        Hero(
                          tag: 'logoAnimation',
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 250,
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Center(
                          child: TextFormField(
                            controller: nameController,
                            onFieldSubmitted: (String value){},
                            onChanged: (String value) {},
                            decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'Usar Name',
                              border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.blue)),
                              prefixIcon: Icon(Icons.person,color: Colors.black45,),),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: TextFormField(
                            controller: emailController,
                            onFieldSubmitted: (String value){},
                            onChanged: (String value) {},
                            decoration: InputDecoration(
                              labelText: 'Enter your email',
                              hintText: 'ex: test@gmail.com',
                              border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.blue)),
                              prefixIcon: Icon(Icons.email,color: Colors.black45,),),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: TextFormField(
                            controller: passwordController,
                            onFieldSubmitted: (String value){},
                            onChanged: (String value) {},
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Enter your Passward',
                              border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.blue)),
                              prefixIcon: Icon(Icons.lock,color: Colors.black45,),),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: TextFormField(
                            controller: mobilemamberController,
                            onFieldSubmitted: (String value){},
                            onChanged: (String value) {

                            },
                            decoration: InputDecoration(
                              labelText: 'Mobile Number',
                              border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.blue)),
                              prefixIcon: Icon(Icons.phone,color: Colors.black45,),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () async {
                            int response =  await sqlDb.insertData('''
                              INSERT INTO users ('email' , 'name' , 'password' , 'mobilemamber')
                      VALUES ("${emailController.text}" , "${ nameController.text}" , "${passwordController.text}" , "${ mobilemamberController.text}" )
                               ''');
                            if (response > 0){
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Login()),
                                      (route) => false);
                            }
                            print("add");
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(fontSize: 20 , color: Colors.white ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 25, vertical: 10 )
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account? ", style: TextStyle(fontSize: 18,color: Colors.black54)),

                            GestureDetector(
                                onTap: () {Navigator.pushNamed(context, '/Login');},
                                child: Text("Log in", style: TextStyle(fontWeight: FontWeight.bold))),
                          ],

                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}

class _conmobilenumer {
}

class _conPassword {
}

class _conEmail {
}

class _conName {
}
