import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_management/core/constants.dart';
import 'package:student_management/presentation/home/widgets/image_widget.dart';
//import 'package:image_picker_gallery_camera/image_picker_gallery_camera.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final phoneController = TextEditingController();
  final schoolController = TextEditingController();
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(children: [
          GestureDetector(
            onTap: () => pickImage(),
            child: CircleAvatar(
              radius: 80,
              child: selectedImage != null
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Color.fromARGB(255, 192, 175, 219),
                          width: 5,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(
                            selectedImage!,
                          ),
                        ),
                      ),
                    )
                  : const Icon(
                      Icons.image,
                      size: 50,
                    ),
            ),
          ),


          kheight,
          TextFormField(
            controller: nameController,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
                label: Text("Enter name"), border: OutlineInputBorder()),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please enter your name";
              } else {
                return null;
              }
            },
          ),
          kheight,
          TextFormField(
            controller: ageController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text(
                "enter age",
              ),
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please enter your age";
              } else {
                return null;
              }
            },
          ),
          kheight,
          TextFormField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text(
                "enter phone",
              ),
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please enter your phone";
              } else {
                return null;
              }
            },
          ),
          kheight,
          TextFormField(
            controller: schoolController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text(
                "enter school name",
              ),
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please enter your school";
              } else {
                return null;
              }
            },
          ),
          kheight,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 240, 237, 237),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            onPressed: () {
              onSubmit();
            },
            child: const Text("Submit"),
          ),
        ]),
      ),
    );
  }

  void onSubmit() {
    if (formKey.currentState!.validate()) {
      final name = nameController.text;
      final age = ageController.text;
      final phone = phoneController.text;
      final school = schoolController.text;
      print("$name $age $phone $school");
      if (selectedImage == null) {
        //return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              backgroundColor: Colors.red,
              duration: Duration(seconds: 1),
              content: Text('please add your picture!')),
        );
      } else {
//save to database

        setState(() {
          selectedImage = null;
        });
      }
    }
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        selectedImage = File(pickedImage.path);
      });
    }
  }
}
