

import 'package:hive/hive.dart';

import '../models/user_model.dart';
import '../models/userdetails.dart';

void addUser(UserModel user)async{
  var userDB=await Hive.openBox<UserModel>("userBox");
  userDB.add(user);
}

Future<Iterable<UserModel>> getUsers()async{
  var userDB=await Hive.openBox<UserModel>("userBox");
  return userDB.values;
}

dynamic getUser(key)async{
  var userDB=await Hive.openBox<UserModel>("userBox");
  return userDB.get(key);
}

void updateUser(UserModel user, UserDetailsModel detailsModel) async
{
  
  var userDB=await Hive.openBox<UserModel>("userBox");
  UserModel updated_user=UserModel(
    name: user.name, 
    email: user.email,
     password: user.password,
     age: detailsModel.age,
     experience: detailsModel.experience,
     salary: detailsModel.salary,
     score: detailsModel.score,
     jobType: detailsModel.jobtype

     );

    userDB.putAt(user.key, updated_user);
}