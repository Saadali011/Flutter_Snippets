// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:myapp/splash_IntroPage/introPage.dart';
// import '../main.dart';
//
// class SplashScreen extends StatefulWidget{
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 5),(){
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> IntroPage()));
//     },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.lightBlue,
//         child: Center(
//           child: Text("Welcome To Our Page! " , style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }