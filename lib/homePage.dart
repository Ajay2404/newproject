// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   TextEditingController name = TextEditingController();
//   List list = [];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getDataMethod();
//   }
//
//   getDataMethod() async {
//     DatabaseReference ref = FirebaseDatabase.instance.ref("Mydata");
//     DatabaseEvent de = await ref.once();
//     Map map = de.snapshot.value as Map;
//     map.forEach((key, value) {
//       setState(() {
//         list.add(value);
//       });
//
//       print("ajayhariyani$list");
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: list.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text("${list[index]['name']}"),
//             leading: CircleAvatar(
//                 backgroundImage: NetworkImage(list[index]['image'])),
//             trailing: PopupMenuButton(
//               itemBuilder: (context) {
//                 return [
//                   PopupMenuItem(
//                       onTap: () {
//                         showDialog(
//                           context: context,
//                           builder: (context) {
//                             return SimpleDialog(
//                               children: [
//                                 TextField(controller: name),
//                               ],
//                             );
//                           },
//                         );
//                       },
//                       child: Text("Update")),
//                   PopupMenuItem(
//                       onTap: () {
//                         showDialog(
//                           context: context,
//                           builder: (context) {
//                             return SimpleDialog(
//                               children: [],
//                             );
//                           },
//                         );
//                       },
//                       child: Text("Delete")),
//                 ];
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
