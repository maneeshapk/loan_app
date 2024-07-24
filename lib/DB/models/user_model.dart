import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel extends HiveObject{
   @HiveField(0)
   String name;

   @HiveField(1)
   String email;

   @HiveField(2)
   String password;

   @HiveField(3)
   int? age;

   @HiveField(4)
   int? experience;

   @HiveField(5)
   double? salary;

   @HiveField(6)
   int? score;

   @HiveField(7)
   String? jobType;

   UserModel({required this.name,required this.email,required this.password,this.age,this.experience,this.jobType,this.salary,this.score});
}