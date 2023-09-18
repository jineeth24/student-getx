
import 'package:hive/hive.dart';
part 'student_model.g.dart';

@HiveType(typeId: 0)
class StudentModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String age;
  @HiveField(3)
  String phone;
  @HiveField(4)
  String school;
  @HiveField(5)
  String image;

  StudentModel({
    required this.id,
    required this.name,
    required this.age,
    required this.phone,
    required this.school,
    required this.image,
  }
  );
}