// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:newproject/homePage.dart';
//
// class Otp extends StatefulWidget {
//   const Otp({super.key});
//
//   @override
//   State<Otp> createState() => _OtpState();
// }
//
// class _OtpState extends State<Otp> {
//   TextEditingController num = TextEditingController();
//   TextEditingController otp = TextEditingController();
//   String verid = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         TextField(controller: num, keyboardType: TextInputType.number),
//         ElevatedButton(
//             onPressed: () async {
//               await FirebaseAuth.instance.verifyPhoneNumber(
//                 phoneNumber: '+91${num.text}',
//                 verificationCompleted: (PhoneAuthCredential credential) {},
//                 verificationFailed: (FirebaseAuthException e) {},
//                 codeSent: (String verificationId, int? resendToken) {
//                   setState(() {
//                     verid = verificationId;
//                   });
//                 },
//                 codeAutoRetrievalTimeout: (String verificationId) {},
//               );
//             },
//             child: Text("Get Otp")),
//         TextField(
//           controller: otp,
//           keyboardType: TextInputType.number,
//         ),
//         ElevatedButton(
//             onPressed: () async {
//               FirebaseAuth auth = FirebaseAuth.instance;
//               String smsCode = '${otp.text}';
//               PhoneAuthCredential credential = PhoneAuthProvider.credential(
//                   verificationId: verid, smsCode: smsCode);
//               await auth.signInWithCredential(credential);
//               Navigator.push(context, MaterialPageRoute(builder: (context) {
//                 return HomePage();
//               },));
//
//             },
//             child: Text("Submit")),
//       ]),
//     );
//   }
// }
