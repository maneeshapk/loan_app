// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({super.key});

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  TextEditingController updatenameController = TextEditingController();
  TextEditingController updatepasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.2, left: 20, right: 20),
        child: Column(
          children: [
            TextField(
              controller: updatenameController,
              decoration: InputDecoration(
                  hintText: " enter new name",
                  icon: const Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextField(
              controller: updatepasswordController,
              decoration: InputDecoration(
                  hintText: " enter new password",
                  icon: const Icon(Icons.lock_sharp),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextButton(
              onPressed: () {
                String updatename = updatenameController.text.trim();
                String updatepassword = updatepasswordController.text.trim();

                print("new name : $updatename");
                print("new password : $updatepassword");
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(50, 50)),
                ),
                child: const Center(
                    child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
