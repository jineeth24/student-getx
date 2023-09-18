import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_management/data/model/student_model.dart';
import 'package:student_management/presentation/home/widgets/registration_form_widget.dart';

import 'presentation/home/sceen_home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(StudentModelAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomeScreen() ,
    );
  }
}
