import 'package:flutter/material.dart';

import 'package:myapp/splash_IntroPage/introPage.dart';
import 'package:myapp/splash_IntroPage/splashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  var nameController = TextEditingController();

  static const String KEYNAME = "name";
  var nameValue = "No Value Saved";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Mapping List" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
      ),
      body: Container(
          child: Center(
            child: SizedBox(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: nameController ,
                    decoration: InputDecoration(
                      label: Text("Name"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                    ),
                  ),
                  SizedBox(height: 11,),
                  ElevatedButton(
                    onPressed: () async {
                      // var name =
                      var prefs = await SharedPreferences.getInstance();
                      prefs.setString(KEYNAME,nameController.text.toString());
                    },
                    child: Text("Save "),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                    ),
                  ),
                  SizedBox(height: 11,),
                  Text(nameValue),
                ],
              ),
            ),
          )
      ),
    );
  }

  void getValue() async{
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);
    nameValue = getName ?? "No Value Saved";

    setState(() {

    });
  }
}