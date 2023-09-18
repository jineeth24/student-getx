import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_management/controllers/student_controller.dart';
import 'package:student_management/core/constants.dart';

class StudentDetailScreen extends StatelessWidget {
  StudentDetailScreen({super.key, required this.studentIndex});
  final studentIndex;

  final StudentController sController = Get.find<StudentController>();

  @override
  Widget build(BuildContext context) {
    final data = sController.studentList[studentIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              
            },
          ),
        ],
        backgroundColor: Color.fromARGB(255, 186, 166, 221),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(38.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: FileImage(
                    File(data.image),
                  ),
                ),
                kheight,
                Text(data.name),
                kheight,
                Text(data.age),
                kheight,
                Text(data.phone),
                kheight,
                Text(data.school),
                Text(data.id),
                kheight,
                Container(
                  width: MediaQuery.of(context).size.width * .60,
                  color: Color.fromARGB(255, 223, 207, 250),
                  child: TextButton(
                    child: const Text("Delete"),
                    onPressed: () {
                      print("delete");
                      sController.deleteStudent(data.id);
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
