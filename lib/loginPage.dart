// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:newproject/otp.dart';
// import 'package:newproject/registerPage.dart';
//
// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});
//
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login Page'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: const InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             TextField(
//               controller: passwordController,
//               decoration: const InputDecoration(
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//             ),
//             const SizedBox(height: 32.0),
//             ElevatedButton(
//               onPressed: () async {
//                 String email = emailController.text;
//                 String password = passwordController.text;
//                 try {
//                   final credential = await FirebaseAuth.instance
//                       .signInWithEmailAndPassword(
//                           email: email, password: password)
//                       .then((value) {
//                     Navigator.push(context, MaterialPageRoute(
//                       builder: (context) {
//                         return const Otp();
//                       },
//                     ));
//                   });
//                 } on FirebaseAuthException catch (e) {
//                   if (e.code == 'user-not-found') {
//                     print('No user found for that email.');
//                   } else if (e.code == 'wrong-password') {
//                     print('Wrong password provided for that user.');
//                   }
//                 }
//               },
//               child: const Text('Login'),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(
//                     builder: (context) {
//                       return const RegisterForm();
//                     },
//                   ));
//                 },
//                 child: const Text("Register"))
//           ],
//         ),
//       ),
//     );
//   }
// }
