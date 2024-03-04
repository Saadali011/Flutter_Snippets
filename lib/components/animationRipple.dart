import 'package:flutter/material.dart';
import 'package:myapp/splash_IntroPage/introPage.dart';
import 'package:myapp/splash_IntroPage/splashScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SplashScreen(),
      home : MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin  {
  late Animation _animation;
  late AnimationController _animationController;
  var ListRadius = [
    150.0 , 200.0 , 250.0 ,300.0,350.0
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController =
        AnimationController( vsync : this, duration: Duration(seconds: 4),lowerBound: 0.5 );
    // AnimationController( vsync : this, duration: Duration(seconds: 4),);
    // _animation = Tween(begin: 0.0, end : 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {

      });
    });

    _animationController.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Mapping List" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
      ),
      body: Center(
          child: Stack(
              alignment: Alignment.center,
              children: [
                buildMyContainer(ListRadius[0],),
                buildMyContainer(ListRadius[1],),
                buildMyContainer(ListRadius[2],),
                buildMyContainer(ListRadius[3],),
                buildMyContainer(ListRadius[4],),
                Icon(Icons.add_call , color: Colors.white, size: 34,),
              ]
            // children: ListRadius.map((radius) => Container(
            //     // width: radius*_animation.value,
            //     // height: radius*_animation.value,
            //     width: radius*_animationController.value,
            //     height: radius*_animationController.value,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       color: Colors.blue.withOpacity(1.0 - _animationController.value),
            //       // color: Colors.blue.withOpacity(1.0 - _animation.value),
            //     ),
            //   )).toList()
          )
      ),
    );
  }

  Widget buildMyContainer(radius){
    return  Container(
      width: radius*_animationController.value,
      height: radius*_animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0 - _animationController.value),
      ),
    );
  }
}