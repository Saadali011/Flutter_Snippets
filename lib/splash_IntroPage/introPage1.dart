// import 'package:flutter/material.dart';
// import '../main.dart';
//
// class IntroPage extends StatelessWidget {
//
//   var nameController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Intro Page"),
//         backgroundColor: Colors.orange,
//       ),
//       body: Center(
//         child: Container(
//           width: 300,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Welcome",
//                 style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 11,
//               ),
//               TextField(
//                 controller: nameController ,
//               ),
//               const SizedBox(
//                 height: 11,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 34,color: Colors.white),),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => MyHomePage()));
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.orange,
//                       onPrimary: Colors.white,
//                     ),
//                     child: const Text(
//                       "Click Here",
//                       // style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// // import 'main.dart';
// //
// // class IntroPage extends StatelessWidget{
// //   @override
// //   Widget build(BuildContext context) {
// //       return Scaffold(
// //         appBar: AppBar(
// //           title: const Text("Intro"),
// //           backgroundColor: Colors.orange,
// //         ),
// //         body: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             // crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               const Text("Welcome",
// //                 style: TextStyle(
// //                   fontSize: 34,
// //                   fontWeight: FontWeight.bold),
// //               ),
// //               const  SizedBox(
// //                 height: 11,
// //               ),
// //               ElevatedButton(
// //                   onPressed: (){
// //                     Navigator.push(
// //                     context,
// //                   MaterialPageRoute(
// //                       builder: (context) => const MyHomePage(),
// //                 ));
// //                     print("Click!");
// //
// //               },
// //                   style: ElevatedButton.styleFrom(
// //                     primary: Colors.orange,
// //                     onPrimary: Colors.white,
// //                   ),
// //                   child: const Text("Next"),
// //               ),
// //             ],
// //           ),
// //         ),
// //       );
// //   }
// //
// //
// // }
