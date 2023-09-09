import 'package:flutter/material.dart';
import 'package:student_management/core/constants.dart';

class StudentDetailScreen extends StatelessWidget {
  const StudentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
        backgroundColor: Color.fromARGB(255, 186, 166, 221),
      ),
      body:  SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(38.0),
            child: Column(
              children: [
               const CircleAvatar(
                  radius: 100,
                ),
                kheight,
                Text("name"),
                kheight,
                Text("age"),
                kheight,
                Text("phone"),
                kheight,
                Text("school"),
                kheight,
                Container(
                  width: MediaQuery.of(context).size.width*.60,
                  color: Color.fromARGB(255, 223, 207, 250),
                  child: TextButton(child: const Text("Delete"),onPressed: (){},),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
