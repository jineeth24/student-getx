import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_management/core/constants.dart';
import 'package:student_management/presentation/home/widgets/registration_form_widget.dart';
import 'package:student_management/presentation/student_list/student_list_screen.dart';
import 'package:student_management/presentation/student_details/detail_screen.dart';

import '../../controllers/student_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
final StudentController controller=Get.put(StudentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 186, 166, 221),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(28.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                kheight,
                FormWidget(),
                kheight,
                Container(
                  width: 200,
                  color: Color.fromARGB(255, 190, 158, 245),
                  child: TextButton(
                    child: Text("ViewStudentRecord"),
                    onPressed: () {
                      
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return  StudentListScreen();})) ; 
                    },
                  ),
                ),
                Obx(() => Text(controller.studentList.length.toString())),
               
                //StudentList,Widget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
