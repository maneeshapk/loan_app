import 'package:flutter/material.dart';

import '../utilities/routering.dart';


class ProfileTab extends StatelessWidget {
  final String name;
  final String email;
  const ProfileTab({
    super.key,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Image.asset(
              'assets/images/menlogo.png',
              height: 200,
              width: 200,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                const Text("USER NAME : "),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(name)
              ],
            )),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                const Text("EMAIL ID : "),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(email)
              ],
            )),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.changepassword);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.all(Radius.elliptical(50, 50)),
            ),
            child: const Center(
                child: Text(
              "Edit Profile",
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
          ),
        )
      ],
    ));
  }
}
