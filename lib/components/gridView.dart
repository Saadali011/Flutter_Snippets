import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var arrColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.pink,
      Colors.grey,
      Colors.black,
      Colors.deepOrange,
      Colors.brown,
      Colors.purpleAccent
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Portal' ,style: TextStyle(fontWeight: FontWeight.w500),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [

          // GrideView.Count

          SizedBox(
            height: 200,
            child: GridView.count(crossAxisCount:4 ,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(color: arrColors[0],),
                Container(color: arrColors[1],),
                Container(color: arrColors[2],),
                Container(color: arrColors[3],),
                Container(color: arrColors[4],),
                Container(color: arrColors[5],),
                Container(color: arrColors[6],),
                Container(color: arrColors[7],),
                Container(color: arrColors[8],),
              ],),
          ),
          Container(
            height: 100,
          ),

          // GrideView.Extent

          SizedBox(height: 200,
            child: GridView.extent(maxCrossAxisExtent: 100,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(color: arrColors[0],),
                Container(color: arrColors[1],),
                Container(color: arrColors[2],),
                Container(color: arrColors[3],),
                Container(color: arrColors[4],),
                Container(color: arrColors[5],),
                Container(color: arrColors[6],),
                Container(color: arrColors[7],),
                Container(color: arrColors[8],),
              ],
            ),
          ),
          Container(
            height: 100,
          ),

          // GrideView.Builder

          SizedBox(
            height: 200,
            child: GridView.builder(itemBuilder: (context, index) {
              return Container(
                color: arrColors[index],
              );
            },
              itemCount: arrColors.length ,
              // gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 3,
              //   mainAxisSpacing: 11,
              //   crossAxisSpacing: 11
              // ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
              ),
            ),
          ),

        ],
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}


