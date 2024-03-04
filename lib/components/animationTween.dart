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
// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
//
//   late Animation animation;
//   late Animation colorAnimation;
//   late AnimationController animationController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     animationController = AnimationController(vsync: this,duration: Duration(seconds: 4));
//     animation = Tween(begin : 0.0, end : 200.0).animate(animationController);
//     colorAnimation = ColorTween(begin: Colors.blue, end : Colors.green).animate(animationController);
//
//     animationController.addListener(() {
//       print(animation.value);
//       setState(() {
//
//       });
//     });
//
//     animationController.forward();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar : AppBar(
//         backgroundColor: Colors.blue,
//         title: Center(child: Text("Mapping List" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//         ),
//       ),
//       body: Center(
//         child: Container(
//           width: animation.value,
//           height: animation.value,
//           color: colorAnimation.value,
//         ),
//       ),
//     );
//   }
// }