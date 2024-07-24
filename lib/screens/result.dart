import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
   final detals= ModalRoute.of(context)?.settings.arguments as Map<String, dynamic> ;
   final  emi=detals['emi'] as double;
   final  amount=detals['amount_eligible'] as double;
    return Scaffold(
        body: ListView(
      children: [
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.center,
                  colors: [
                    Color.fromARGB(255, 23, 53, 69),
                    Color.fromARGB(255,  139, 174, 191),
                    Color.fromARGB(255, 236, 238, 238)
                  ]),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Text(
                    "amount_eligible : $amount  ",
                    
                    style: const TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    "emi : $emi",
                    style: const TextStyle(fontSize: 20),
                  ),
                ]),
              
          ),
        )
      ],
    ));
  }
}