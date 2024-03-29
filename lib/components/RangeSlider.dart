import 'package:flutter/material.dart';
import 'package:myapp/components/basicCalculation.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 20,
            activeColor: Colors.green,
            inactiveColor: Colors.red,
            min: 0,
            max: 100,
            onChanged: (newValue){
              values = newValue;
              print('${newValue.start}, ${newValue.end}');
              setState(() {

              });
            },
          ),
        ),
      ),
    );
  }
}