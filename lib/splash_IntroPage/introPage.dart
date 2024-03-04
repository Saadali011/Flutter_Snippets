// import 'package:flutter/material.dart';
// import '../main.dart';
// class IntroPage extends StatelessWidget{
//
//   // var NameController = TextEditingController();
//   var nameController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Intro Page"),
//       ),
//       body: Center(
//         child:   Container(
//           width: 300,
//           child:   Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Welcome to Our Page",
//                 style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color : Colors.green),
//               ),
//               SizedBox(
//                 height: 11,
//               ),
//               TextField(
//                 controller: nameController,
//               ),
//               SizedBox(
//                 height: 11,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 36, color: Colors.white),
//                   ),
//                   ElevatedButton(
//                     onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
//                     },
//                     child: Text("Click Here" , style: TextStyle(fontSize: 31,fontWeight: FontWeight.w700),),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }