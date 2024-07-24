// ignore_for_file: avoid_print, use_build_context_synchronously, non_constant_identifier_names, unused_local_variable
import 'package:flutter/material.dart';
import 'package:uoloan/DB/models/user_model.dart';

import '../DB/functions/user_functions.dart';
import '../DB/loanfunctions/scoresetter.dart';
import '../utilities/routering.dart';
import 'amount.dart';
import 'emicalculation.dart';


class HomeLoanTenure extends StatelessWidget {
  const HomeLoanTenure({super.key});

  @override
  Widget build(BuildContext context) {
    UserModel user = ModalRoute.of(context)?.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBar( title: const Text("LOAN APP"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()async{
              print("userkey: ${user.key}");
              UserModel cuser =await getUser(user.key);
              print(user.key);

              int calculated_score=Score_setter(
                score: cuser.score as int,
                age:cuser.age as int,
                salary:cuser.salary as double,
                jobtype:cuser.jobType as String,
                experience:cuser.experience as int
              );
              double amount_eligible=amountEligible(
                salary:cuser.salary as double,
                score: cuser.score as int
              );
              double emi=emiCalculator(
                amountEligible: amount_eligible,
                tenure: 12,
                interestrate: 8
              );
              print("emi=$emi");
              print("amount_eligible=$amount_eligible");
              Navigator.of(context).pushNamed(Routes.result, arguments:{ 'emi':emi, 'amount_eligible':amount_eligible });
            }, child: const Text("12")),
            ElevatedButton(onPressed: ()async{
              print("userkey: ${user.key}");
              UserModel cuser =await getUser(user.key);
              print(user.key);

              int calculated_score=Score_setter(
                score: cuser.score as int,
                age:cuser.age as int,
                salary:cuser.salary as double,
                jobtype:cuser.jobType as String,
                experience:cuser.experience as int
              );
              double amount_eligible=amountEligible(
                salary:cuser.salary as double,
                score: cuser.score as int
              );
              double emi=emiCalculator(
                amountEligible: amount_eligible,
                tenure: 24,
                interestrate: 16
              );
              print("emi=$emi");
              print("amount_eligible=$amount_eligible");
              Navigator.of(context).pushNamed(Routes.result, arguments:{ 'emi':emi, 'amount_eligible':amount_eligible });
            }, child: const Text("24")),
            ElevatedButton(onPressed: ()async{
              print("userkey: ${user.key}");
              UserModel cuser =await getUser(user.key);
              print(user.key);

              int calculated_score=Score_setter(
                score: cuser.score as int,
                age:cuser.age as int,
                salary:cuser.salary as double,
                jobtype:cuser.jobType as String,
                experience:cuser.experience as int
              );
              double amount_eligible=amountEligible(
                salary:cuser.salary as double,
                score: cuser.score as int
              );
              double emi=emiCalculator(
                amountEligible: amount_eligible,
                tenure: 36,
                interestrate: 12
              );
              print("emi=$emi");
              print("amount_eligible=$amount_eligible");
              Navigator.of(context).pushNamed(Routes.result, arguments:{ 'emi':emi, 'amount_eligible':amount_eligible });
            }, child: const Text("36")),
            ElevatedButton(onPressed: ()async{
              print("userkey: ${user.key}");
              UserModel cuser =await getUser(user.key);
              print(user.key);

              int calculated_score=Score_setter(
                score: cuser.score as int,
                age:cuser.age as int,
                salary:cuser.salary as double,
                jobtype:cuser.jobType as String,
                experience:cuser.experience as int
              );
              double amount_eligible=amountEligible(
                salary:cuser.salary as double,
                score: cuser.score as int
              );
              double emi=emiCalculator(
                amountEligible: amount_eligible,
                tenure: 48,
                interestrate: 14
              );
              print("emi=$emi");
              print("amount_eligible=$amount_eligible");
              Navigator.of(context).pushNamed(Routes.result, arguments:{ 'emi':emi, 'amount_eligible':amount_eligible });
            }, child: const Text("48")),
            ElevatedButton(onPressed: ()async{
              print("userkey: ${user.key}");
              UserModel cuser =await getUser(user.key);
              print(user.key);

              int calculated_score=Score_setter(
                score: cuser.score as int,
                age:cuser.age as int,
                salary:cuser.salary as double,
                jobtype:cuser.jobType as String,
                experience:cuser.experience as int
              );
              double amount_eligible=amountEligible(
                salary:cuser.salary as double,
                score: cuser.score as int
              );
              double emi=emiCalculator(
                amountEligible: amount_eligible,
                tenure: 60,
                interestrate: 17
              );
              print("emi=$emi");
              print("amount_eligible=$amount_eligible");
              Navigator.of(context).pushNamed(Routes.result, arguments:{ 'emi':emi, 'amount_eligible':amount_eligible });
            }, child: const Text("60")),
          
         
          ],
        ),
      ),
    );
  }
}