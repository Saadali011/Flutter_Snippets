// import 'package:flutter/material.dart';
// import 'package:myapp/splash_IntroPage/introPage.dart';
// import 'package:myapp/splash_IntroPage/splashScreen.dart';
//
// void main(){
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter App",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SplashScreen(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//
//
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var arrData = [
//     {
//       'name' :  'Saad',
//       'ph no' : '03265444565',
//       'unread' : '2'
//     },{
//       'name' :  'Suleman',
//       'ph no' : '032515521',
//       'unread' : '1'
//     },{
//       'name' :  'Saad',
//       'ph no' : '03265444565',
//       'unread' : '6'
//     },{
//       'name' :  'Saad',
//       'ph no' : '03265444565',
//       'unread' : '5'
//     },{
//       'name' :  'Saad',
//       'ph no' : '03265444565',
//       'unread' : '4'
//     },{
//       'name' :  'Najeeb',
//       'ph no' : '03215148545',
//       'unread' : '3'
//     },{
//       'name' :  'Shahroz',
//       'ph no' : '0432642432',
//       'unread' : '7'
//     },{
//       'name' :  'Asim',
//       'ph no' : '04214264224',
//       'unread' : '31'
//     },{
//       'name' :  'Taqi',
//       'ph no' : '0432462462',
//       'unread' : '8'
//     },{
//       'name' :  'Huzaifa',
//       'ph no' : '0435674279213',
//       'unread' : '10'
//     },{
//       'name' :  'Ayan',
//       'ph no' : '043046547361',
//       'unread' : '9'
//     },{
//       'name' :  'Mursaleen',
//       'ph no' : '04356457327',
//       'unread' : '15'
//     },{
//       'name' :  'Abrar',
//       'ph no' : '0349792342',
//       'unread' : '11'
//     },{
//       'name' :  'Mubashir',
//       'ph no' : '0235465645',
//       'unread' : '14'
//     },{
//       'name' :  'Moeez',
//       'ph no' : '03456564245',
//       'unread' : '13'
//     },
//     {
//       'name' :  'Jameel',
//       'ph no' : '0345425462',
//       'unread' : '12'
//     },{
//       'name' :  'Ibad',
//       'ph no' : '0314655545',
//       'unread' : '16'
//     },{
//       'name' :  'Mubeen',
//       'ph no' : '034254644545',
//       'unread' : '18'
//     },{
//       'name' :  'Fahad',
//       'ph no' : '03426456445',
//       'unread' : '17'
//     },{
//       'name' :  'Taqi',
//       'ph no' : '03335245645',
//       'unread' : '19'
//     },{
//       'name' :  'Mudassir',
//       'ph no' : '0345652672',
//       'unread' : '21'
//     },
//     {
//       'name' :  'Noman',
//       'ph no' : '0346576524',
//       'unread' : '20'
//     },
//     {
//       'name' :  'Fawad',
//       'ph no' : '0347649712',
//       'unread' : '22'
//     },
//     {
//       'name' :  'Ali',
//       'ph no' : '03546546578',
//       'unread' : '25'
//     },
//     {
//       'name' :  'Ibrar',
//       'ph no' : '0285763878',
//       'unread' : '24'
//     },
//     {
//       'name' :  'Faizan',
//       'ph no' : '034655455',
//       'unread' : '23'
//     },
//     {
//       'name' :  'Uzair',
//       'ph no' : '0326265262',
//       'unread' : '26'
//     },
//     {
//       'name' :  'Wajahat',
//       'ph no' : '03226515412',
//       'unread' : '27'
//     },
//     {
//       'name' :  'Hamza',
//       'ph no' : '03265656522',
//       'unread' : '28'
//     },
//     {
//       'name' :  'Zubair',
//       'ph no' : '032655645456',
//       'unread' : '29'
//     },
//     {
//       'name' :  'Musaf',
//       'ph no' : '032569548250',
//       'unread' : '30'
//     },
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar : AppBar(
//         backgroundColor: Colors.blue,
//         title: Center(child: Text("Mapping List" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//         ),
//       ),
//       body: Container(
//           child: ListView(
//               children: arrData.map((value)=>
//                   ListTile(
//                     leading: Icon(Icons.account_circle),
//                     title: Text(value['name'].toString()),
//                     subtitle: Text(value['ph no'].toString()),
//                     trailing: CircleAvatar(
//                         radius: 12,
//                         backgroundColor: Colors.green,
//                         child: Text(value['unread'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
//                   )
//                 //     Padding(
//                 //   padding: const EdgeInsets.all(8.0),
//                 //   child: Container(
//                 //     decoration: BoxDecoration(
//                 //       borderRadius: BorderRadius.circular(21),
//                 //       color: Colors.blue.shade100,
//                 //     ),
//                 //     child: Padding(
//                 //       padding: const EdgeInsets.all(8.0),
//                 //       child: Center(child: Text(value)),
//                 //     ),
//                 //   ),
//                 // )
//               ).toList()
//           )
//       ),
//     );
//   }
// }