// import 'dart:io';
//
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:newproject/homePage.dart';
//
// class FireStorage extends StatefulWidget {
//   const FireStorage({super.key});
//
//   @override
//   State<FireStorage> createState() => _FireStorageState();
// }
//
// class _FireStorageState extends State<FireStorage> {
//   TextEditingController name = TextEditingController();
//   TextEditingController age = TextEditingController();
//   TextEditingController address = TextEditingController();
//   String imagee = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: InkWell(
//                 onTap: () async {
//                   final ImagePicker picker = ImagePicker();
//                   final XFile? image =
//                       await picker.pickImage(source: ImageSource.gallery);
//                   setState(() {
//                     imagee = image!.path;
//                   });
//                 },
//                 child: CircleAvatar(
//                   maxRadius: 80,
//                   backgroundImage: FileImage(File(imagee)),
//                 )),
//           ),
//           SizedBox(height: 30),
//           TextField(
//               controller: name, decoration: InputDecoration(hintText: "Name:")),
//           TextField(
//             controller: age,
//             decoration: InputDecoration(hintText: "Age:"),
//             keyboardType: TextInputType.number,
//           ),
//           TextField(
//               controller: address,
//               decoration: InputDecoration(hintText: "Add:")),
//           SizedBox(height: 30),
//           ElevatedButton(
//               onPressed: () async {
//                 final storageRef = FirebaseStorage.instance.ref();
//                 String imageName = "Image${DateTime.now().second}.jpg";
//                 final spaceRef = storageRef.child("AppImage/$imageName");
//
//                 await spaceRef.putFile(File(imagee));
//                 spaceRef.getDownloadURL().then((value) async {
//                   DatabaseReference ref =
//                       FirebaseDatabase.instance.ref("Mydata").push();
//                   String? id = ref.key;
//                   await ref.set({
//                     "id": id,
//                     "name": name.text,
//                     "age": age.text,
//                     "address": address.text,
//                     "image": value
//                   });
//                   Navigator.push(context, MaterialPageRoute(
//                     builder: (context) {
//                       return HomePage();
//                     },
//                   ));
//                 });
//               },
//               child: Text("Upload")),
//           // SizedBox(height: 20),
//           // TextField(),
//           // SizedBox(height: 20),
//           // TextField(),
//         ],
//       ),
//     );
//   }
// }
