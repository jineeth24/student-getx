// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImagePickerWidget extends StatefulWidget {
//   const ImagePickerWidget({super.key});

//   @override
//   State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
// }

// class _ImagePickerWidgetState extends State<ImagePickerWidget> {
//   File? imagefile;

//   // Future<void> pickImage() async {
//   //   final picker = ImagePicker();
//   //   final pickedImage = await picker.pickImage(source: ImageSource.gallery);
//   //   if (pickedImage != null) {
//   //     setState(() {
//   //       selectedImage = File(pickedImage.path);
//   //     });
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => pickImage(),
//       child: CircleAvatar(
//         radius: 80,
//         child: selectedImage != null
//             ? Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(100),
//                   border: Border.all(
//                     color: Color.fromARGB(255, 192, 175, 219),
//                     width: 5,
//                   ),
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: FileImage(
//                       selectedImage!,
//                     ),
//                   ),
//                 ),
//               )
//             : const Icon(
//                 Icons.image,
//                 size: 50,
//               ),
//       ),
//     );
//   }
// }
// // selectedImage != null
// //           ? Image.file(
// //               selectedImage!,
// //               fit: BoxFit.cover,
// //             )
// //           :  IconButton(icon:const Icon(Icons.image,size: 50,),onPressed: () => pickImage(),),