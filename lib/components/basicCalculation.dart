import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Calculation"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color : Colors.blue.shade200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,


                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var sum = no1 + no2;
                        result = "The sum of $no1 and $no2 is $sum";
                        setState(() {

                        });
                      }, child: Text("Add")),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var sub = no1 - no2;
                        result = "The Difference between $no1 and $no2 is $sub";
                        setState(() {

                        });
                      }, child: Text("Sub")),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var mult = no1 * no2;
                        result = "The Product of $no1 and $no2 is $mult";
                        setState(() {

                        });
                      }, child: Text("Multiply")),
                      ElevatedButton(onPressed: (){

                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var times = no1 / no2;
                        result = "The $no1 can be divided by $no2 , ${times.toStringAsFixed(2)} times.";
                        setState(() {

                        });
                      }, child: Text("Divide"))
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(21),
                  child: Text(result ,style: TextStyle(fontSize: 25,color : Colors.white),),)
              ],
            ),
          ),
        ),

      ),

    );
  }
}