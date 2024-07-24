
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uoloan/utilities/router.dart';


import 'DB/models/user_model.dart';



void main(List<String> args) async{
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(UserModelAdapter().typeId))
  {
    Hive.registerAdapter(UserModelAdapter());
  }
  runApp(const RouterScreen());
}