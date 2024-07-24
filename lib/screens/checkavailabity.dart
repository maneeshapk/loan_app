import 'package:flutter/material.dart';

import '../DB/models/user_model.dart';
import '../utilities/routering.dart';


class CheckAvailabitity extends StatelessWidget {
  const CheckAvailabitity({super.key});

  @override
  Widget build(BuildContext context) {
     var user = ModalRoute.of(context)?.settings.arguments as UserModel;
    return  Scaffold(
      appBar: AppBar( title: const Text("LOAN APP"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(Routes.homeloantenure, arguments: user);
            }, child: const Text("home loan")),
          
          ElevatedButton(onPressed: (){
            print("user key ---- ${user.key}");
            Navigator.of(context).pushNamed(Routes.personalloantenure, arguments: user);
          }, child: const Text("personal loan"))
          ],
        ),
      ),
    );
  }
}