
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_management/data/model/student_model.dart';
import 'package:student_management/services/hive_services.dart';
const databaseName='student_db';

class StudentController extends GetxController{

  RxList studentList=[].obs;
  final HiveServices hiveMethods = HiveServices();
 Future<void> getStudents()async {
  
  final data = await hiveMethods.getAllStudents() ;
  studentList.assignAll(data);

  } 

  void addStudent(StudentModel student){
    hiveMethods.addStudent(student);
    getStudents();
  }
  void deleteStudent(String id){
    hiveMethods.deleteStudent(id);
    getStudents();
  }
  //   final nameController = TextEditingController();
  // final ageController = TextEditingController();
  // final phoneController = TextEditingController();
  // final schoolController = TextEditingController();



   

// Future<void> addStudent(StudentModel student)async{
//   final studentbox=await Hive.openBox<StudentModel>(databaseName);
//   await studentbox.put(student.id, student);
//   print("success");
//   getAllStudents();
  
// }

// Future<void>getAllStudents()async{
//   final studentbox=await Hive.openBox<StudentModel>(databaseName);
  
//   studentList.clear();
//   studentList.addAll(studentbox.values.toList());
//   //  print(studentList.length);
//   // print(studentList[3].name);
//   //  print(studentList[3].age);

// }

// Future<void>deleteStudent(String id)async{
//   print(studentList.length);
//   print(id);
//     final studentbox=await Hive.openBox<StudentModel>(databaseName);
//     await studentbox.delete(id);
//      studentList.clear();
//   studentList.addAll(studentbox.values.toList());
//   print(studentList.length);
//   // for(var i=0;i<studentList.length;i++){
//   //   print(studentList[i].name);
//   // }


// }
}