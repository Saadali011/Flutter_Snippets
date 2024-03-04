import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  var _width = 200.0;
  var _height = 100.0;

  // Color bgColor = Colors.blueGrey;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Foo Animation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: _width,
                height: _height,
                // color: bgColor,
                decoration: myDecor ,
                duration: Duration(seconds: 2),
              ),
              SizedBox(height: 8,),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    if(flag){
                      _width = 100.0;
                      _height = 200.0;
                      // bgColor = Colors.green;
                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green,
                      );
                      flag = false;
                    }else{
                      _width = 200.0;
                      _height = 100.0;
                      // bgColor = Colors.grey;
                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color : Colors.blueGrey,
                      );
                      flag = true;
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                ),
                child: Text("Animate!",style: TextStyle(fontSize: 21,  fontWeight: FontWeight.w700),),
              ),
            ],
          ),
        )

    );
  }
}
