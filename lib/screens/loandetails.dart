// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../DB/functions/user_functions.dart';
import '../DB/models/user_model.dart';
import '../DB/models/userdetails.dart';
import '../utilities/routering.dart';

class LoanInfo extends StatefulWidget {
  const LoanInfo({super.key});

  @override
  State<LoanInfo> createState() => _LoanInfoState();
}

class _LoanInfoState extends State<LoanInfo> {
  TextEditingController ageController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController scoreController = TextEditingController();
  TextEditingController jobtypeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    UserModel user = ModalRoute.of(context)?.settings.arguments as UserModel;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            left: 20,
            right: 20),
        child: Column(
          children: [
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                  hintText: "age",
                  icon: const Icon(Icons.calendar_month),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            TextField(
              controller: experienceController,
              decoration: InputDecoration(
                  hintText: "experience",
                  icon: const Icon(Icons.real_estate_agent_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            TextField(
              controller: salaryController,
              decoration: InputDecoration(
                  hintText: "salary",
                  icon: const Icon(Icons.monetization_on),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            TextField(
              controller: scoreController,
              decoration: InputDecoration(
                  hintText: "score",
                  icon: const Icon(Icons.monitor_heart_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            TextField(
              controller: jobtypeController,
              decoration: InputDecoration(
                  hintText: "jobtype",
                  icon: const Icon(Icons.add_home_work_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            TextButton(
              onPressed: () {
                String age = ageController.text;
                String experience = experienceController.text;
                String salary = salaryController.text;
                String score = scoreController.text;
                String jobtype = jobtypeController.text;

                if (age.isEmpty ||
                    experience.isEmpty ||
                    salary.isEmpty ||
                    score.isEmpty ||
                    jobtype.isEmpty) {
                  return;
                }

                UserDetailsModel details = UserDetailsModel(
                    age: int.parse(age),
                    salary: double.parse(salary),
                    score: int.parse(score),
                    jobtype: jobtype,
                    experience: int.parse(experience));

                updateUser(user, details);
                Future updatedUser = getUser(user.key);
                updatedUser.then((user) {
                  print("age:${user.age}");
                  print("expenience:${user.experience}");
                  print("salary:${user.salary}");
                  print("jobtype:${user.jobType}");
                  Navigator.of(context).pushNamed(Routes.checkavailabity, arguments:user);
                });

                
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
                  "check availabitity",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
