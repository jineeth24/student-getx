import 'package:flutter/material.dart';
import 'package:student_management/core/constants.dart';
import 'package:student_management/presentation/home/sceen_home.dart';
import 'package:student_management/presentation/student_details/detail_screen.dart';

class StudentListScreen extends StatelessWidget {
  const StudentListScreen({super.key});
  

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
        padding: const EdgeInsets.all(28.0),
        child: ListView.separated(
          itemCount: 15,
          itemBuilder: (context, index) {
           return  ListTile(
            leading: CircleAvatar(),
            title: Text("name"),
            subtitle: Text("school"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (ctx){return StudentDetailScreen();})) ;        },
          //  tileColor: Color.fromARGB(38, 197, 194, 194),
            );
          },
          separatorBuilder: (context, index) => kheight,
        ),
      ),
      ),
    );
  }
}