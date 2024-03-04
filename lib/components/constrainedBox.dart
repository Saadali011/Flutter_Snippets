import 'package:flutter/material.dart';

void main(){
  runApp(  MyApp());
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
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title:  Text("Hello World"),
        backgroundColor: Colors.grey,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 200,
          maxWidth: 300,
          maxHeight: 100,
        ),
        child: ElevatedButton(
          onPressed: (){},
          child: Text(
              "Click"
          ),

        ),
      ),

    );
  }
}