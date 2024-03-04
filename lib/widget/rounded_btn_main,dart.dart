import 'package:flutter/material.dart';
import 'package:myapp/ui_helper/utill.dart';
import 'package:myapp/widget/rounded_btn.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key :key );

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: "Flashcards ",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home :  MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Center(
              child: Text(
                  "Flashcards App"
              ),
            )
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 50,

                child: RoundedButton(
                  btnName: "Press",
                  icon: Icon(Icons.play_arrow),
                  callback: (){
                    print("Playing...");
                  },
                  textStyle: mTextStyle16(),
                ),
              ),
              Container(height: 11,),
              Container(
                width: 150,
                height: 50,

                child: RoundedButton(
                  btnName: "Login",
                  callback: (){
                    print("Logged In!");
                  },
                  bgColor: Colors.orange,
                  textStyle: mTextStyle17(),
                ),
              ),
            ],
          ),
        )
    );
  }
}

