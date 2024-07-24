import 'package:flutter/material.dart';
import 'package:uoloan/screens/personalloantenure.dart';
import 'package:uoloan/utilities/routering.dart';
import '../screens/changepassword.dart';
import '../screens/checkavailabity.dart';
import '../screens/home.dart';
import '../screens/homeloantenure.dart';
import '../screens/loginpage.dart';
import '../screens/registerpage.dart';
import '../screens/result.dart';
import '../screens/splashscreen.dart';

class RouterScreen extends StatelessWidget {
  const RouterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashscreen,
      routes: {
        Routes.splashscreen:(context) => const SplashScreen(),
        Routes.loginpage:(context) => const Loginpage(),
        Routes.registerpage:(context) => const RegisterPage(),
        Routes.homepage:(context) => const HomePage(),
        Routes.changepassword:(context) => const UpdatePassword(),
        Routes.checkavailabity:(context) => const CheckAvailabitity(),
        Routes.homeloantenure:(context) => const HomeLoanTenure(),
        Routes.personalloantenure:(context) => const PersonalLoanTenure(),
        Routes.result:(context) => const Result(),

      },
    );
  }
}