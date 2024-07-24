// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../DB/functions/user_functions.dart';
import '../images.dart';
import '../utilities/routering.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget textbar(
        String hinttext, IconData logoicon, TextEditingController controller) {
      return TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hinttext,
            icon: Icon(logoicon),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      );
    }



    return ListView(children: [
      Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(Images.login),
            fit: BoxFit.cover,
          )),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.2,
                        left: MediaQuery.of(context).size.height * 0.05),
                    child: const Text(
                      "Login page",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.42,
                        left: MediaQuery.of(context).size.width * 0.04,
                        right: MediaQuery.of(context).size.width * 0.04),
                    child: ListView(
                      children: [
                        textbar("enter email", Icons.email, emailController),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        textbar("enter  password", Icons.lock_sharp,
                            passwordController),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height * 0.1,
                              right: MediaQuery.of(context).size.height * 0.1),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.45,
                            color: const Color.fromARGB(235, 158, 158, 158),
                            child: TextButton(
                                onPressed: () {
                                  String email = emailController.text;
                                  String password = passwordController.text;


                                  Future<dynamic> users= getUsers();
                                  users.then((value) => {
                              value.forEach((user){

                                if(email==user.email && password==user.password)
                                {
                                  Navigator.of(context)
                                   .pushNamed(Routes.homepage,arguments: user);

                                }
                                else
                                {
                                  print("inccorect username or password");
                                }


                                // print("email : ${user.email}");
                                // print("password : ${user.password}");
                              })
                            });





                                  // print(
                                  //     "enter email : $email\n enter password : $password");



                                  //   Navigator.of(context)
                                  //  .pushNamed(Routes.homepage);
                                      

                                    //   if(email=="ajay@gmail.com")
                                    //   {
                                    //     if(password=="123")
                                    //     {
                                    //         Navigator.of(context)
                                    //   .pushNamed(Routes.homepage);
                                    //     }
                                    //     else{
                                    //       print("password inccorrect");
                                    //     }
                                    //   }
                                    // else{
                                    //   Navigator.of(context)
                                    //   .pushNamed(Routes.registerpage);
                                    // }
                                  
                                },
                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(Routes.registerpage);
                            },
                            child: const Text(
                              "create new account",
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    ]);
  }
}
