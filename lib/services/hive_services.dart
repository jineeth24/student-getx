import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_management/data/model/student_model.dart';


const databaseName='student_db';
List<StudentModel> studentList=[];

class HiveServices{

  
Future<void> addStudent(StudentModel student)async{
  final studentbox=await Hive.openBox<StudentModel>(databaseName);
  await studentbox.put(student.id, student);
  print("success");
  getAllStudents();
  
}

Future<List<dynamic>>getAllStudents()async{
  final studentbox=await Hive.openBox<StudentModel>(databaseName);
  
  studentList.clear();
  studentList.addAll(studentbox.values.toList());
  return studentList;
  //  print(studentList.length);
  // print(studentList[3].name);
  //  print(studentList[3].age);

}

Future<void>deleteStudent(String id)async{
  print(studentList.length);
  print(id);
    final studentbox=await Hive.openBox<StudentModel>(databaseName);
    await studentbox.delete(id);
     studentList.clear();
  studentList.addAll(studentbox.values.toList());
  print(studentList.length);
  // for(var i=0;i<studentList.length;i++){
  //   print(studentList[i].name);
  // }


}
Future<void>updateStudent(String id,StudentModel student)async{
 final studentbox=await Hive.openBox<StudentModel>(databaseName);
  await studentbox.put(student.id, student);  

}
}
