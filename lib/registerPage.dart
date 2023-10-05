// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:newproject/loginPage.dart';
//
// class RegisterForm extends StatefulWidget {
//   const RegisterForm({super.key});
//
//   @override
//   _RegisterFormState createState() => _RegisterFormState();
// }
//
// class _RegisterFormState extends State<RegisterForm> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   Future<UserCredential> signInWithGoogle() async {
//     // Trigger the authentication flow
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//
//     // Obtain the auth details from the request
//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;
//
//     // Create a new credential
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );
//
//     // Once signed in, return the UserCredential
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(height: 20.0),
//           TextField(
//             controller: emailController,
//             decoration: InputDecoration(labelText: 'Email'),
//           ),
//           SizedBox(height: 20.0),
//           TextField(
//             controller: passwordController,
//             decoration: InputDecoration(labelText: 'Password'),
//             obscureText: true,
//           ),
//           SizedBox(height: 20.0),
//           ElevatedButton(
//             child: Text('Register'),
//             onPressed: () async {
//               try {
//                 final credential = await FirebaseAuth.instance
//                     .createUserWithEmailAndPassword(
//                   email: emailController.text,
//                   password: passwordController.text,
//                 )
//                     .then((value) {
//                   Navigator.push(context, MaterialPageRoute(
//                     builder: (context) {
//                       return LoginPage();
//                     },
//                   ));
//                 });
//               } on FirebaseAuthException catch (e) {
//                 if (e.code == 'weak-password') {
//                   print('The password provided is too weak.');
//                 } else if (e.code == 'email-already-in-use') {
//                   print('The account already exists for that email.');
//                 }
//               } catch (e) {
//                 print(e);
//               }
//             },
//           ),
//           ElevatedButton(
//             onPressed: () {
//               signInWithGoogle();
//             },
//             child: Text('Continue With Google'),
//           ),
//         ],
//       ),
//     );
//   }
// }
