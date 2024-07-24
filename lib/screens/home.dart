import 'package:flutter/material.dart';
import 'package:uoloan/screens/profile.dart';

import '../DB/models/user_model.dart';
import '../utilities/routering.dart';
import 'loandetails.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    UserModel user = ModalRoute.of(context)?.settings.arguments as UserModel;

    Widget tabBar({IconData? iconz, String textz = ""}) {
      return Column(
        children: [Icon(iconz), Text(textz)],
      );
    }

    return 
         Scaffold(
          appBar: AppBar(
            title: const Text("LOAN APP"),
            actions: [
              IconButton(onPressed: (){
                Navigator.of(context).pushNamed(Routes.newprofile);
              }, icon:const Icon(Icons.menu))
            ],
            bottom: TabBar(
              controller: _controller,
              //onTap: (index) {
                // if (_controller.indexIsChanging) {
                //   _controller.index = 2;
                // } else {



                  
                //   return;
                // }
              //},
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              labelColor: Colors.black,
              tabs: [
                tabBar(iconz: Icons.people, textz: "profile"),
                tabBar(iconz: Icons.attach_money, textz: " loan "),
                tabBar(iconz: Icons.grade_outlined, textz: " cibil score "),
              ],
            ),
          ),
          body: TabBarView(
            controller: _controller,
            children: [
              ProfileTab(
                name: user.name,
                email: user.email,
        
              
              ),
              const LoanInfo(),
              const Icon(Icons.abc),
            ],
          ),
          // bottomNavigationBar: BottomNavigationBar(items: const [
          //   BottomNavigationBarItem(icon: Icon(Icons.abc), label: "abc"),
          //   BottomNavigationBarItem(icon: Icon(Icons.abc), label: "abc"),
          //   BottomNavigationBarItem(icon: Icon(Icons.abc), label: "abc"),
          // ]
          // ),
        );
  }
}
