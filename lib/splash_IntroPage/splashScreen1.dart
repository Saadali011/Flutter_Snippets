// import 'dart:async';
// import 'package:myapp/splash_IntroPage/introPage1.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../main.dart';
//
// class SplashScreen extends StatefulWidget{
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   @override
//   void initState() {
//     super.initState();
//     Timer( const Duration(seconds: 5), (){
//       Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) =>IntroPage(),
//           ));
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.blue,
//         child: const Center(child: Text("Hello" ,
//           style: TextStyle(fontSize: 34 , fontWeight: FontWeight.bold,color :Colors.white),
//         ),),
//       ),
//     );
//   }
// }