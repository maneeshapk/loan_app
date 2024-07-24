// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../DB/functions/user_functions.dart';
import '../DB/models/user_model.dart';
import '../images.dart';
import '../utilities/routering.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
  

    Widget textbar(String hinttext, IconData logoicon,TextEditingController controller) {

      return TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hinttext,
            icon: Icon(logoicon),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      );
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(Images.register),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.1),
              child: const Text(
                "Register page",
                style: TextStyle(
                  letterSpacing: 5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 300, left: 20, right: 20),
              child: ListView(
                children: [
                  textbar("name", Icons.abc,nameController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  textbar("email", Icons.email,emailController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  textbar("password", Icons.password,passwordController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.1,right: MediaQuery.of(context).size.height * 0.1,),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.45,
                      color: const Color.fromARGB(255, 113, 187, 248),
                      child: TextButton(
                          onPressed: () {
                            String name=nameController.text.trim();
                            String email=emailController.text.trim();
                            String password=passwordController.text.trim();

                            if(name.isEmpty || email.isEmpty || password.isEmpty)
                            {
                              return print("null value");
                            }
                            UserModel user=UserModel(email: email,password: password,name: name);
                            addUser(user);
                            Future<dynamic> users= getUsers();
                            users.then((value) => {
                              value.forEach((user){
                                print("email : ${user.email}");
                                print("password : ${user.password}");
                              })
                            });
                            print("name : $name\nemail : $email\npassword : $password");
                            // Navigator.of(context).pushNamed(Routes.loginpage);
                             showDialog(
                    context: context,
                     builder: (context)
                     {
                      return  AlertDialog(
                        title: const Text("Registration sucessfully"),
                        actions: [
                          Center(child: ElevatedButton(onPressed: (){
                     Navigator.of(context).pushNamed(Routes.loginpage);
                          }, child: const Text("back to loginpage")))
                        ],
                      );
                     });
                          },
                         
                          child: const Text(
                            "REGISTER",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
