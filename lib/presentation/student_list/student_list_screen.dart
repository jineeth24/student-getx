import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_management/controllers/student_controller.dart';
import 'package:student_management/core/constants.dart';
import 'package:student_management/presentation/home/sceen_home.dart';
import 'package:student_management/presentation/student_details/detail_screen.dart';

class StudentListScreen extends StatelessWidget {
   StudentListScreen({super.key});
  final StudentController sController=Get.find<StudentController>();

  @override
  Widget build(BuildContext context) {
    sController.getStudents();
     print("succ");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 186, 166, 221),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child:Obx(() =>  ListView.separated(
            
            itemCount: sController.studentList.length,
            itemBuilder: (context, index) {
             
             final data=sController.studentList[index];
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: FileImage(File(data.image), ),
                  // child: Image(image:FileImage(File(data.image)),),
                ),
                title: Text(data.name),
                subtitle: Text(data.phone),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return StudentDetailScreen(studentIndex:index);
                  }));
                },
                //  tileColor: Color.fromARGB(38, 197, 194, 194),
              );
            },
            separatorBuilder: (context, index) => kheight,
          ),)
        ),
      ),
    );
  }
}
