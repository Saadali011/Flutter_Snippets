// import 'dart:html';
import 'package:flutter/material.dart';
// import 'pssssackage:myapp/ui_helper/utill.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.blue,
        // primaryColor: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}):super(key: key);
  @override
  _MyHomePageState createState()=>
      _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  var emailText = TextEditingController();
  var passText = TextEditingController();
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello World"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body :Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("LogIn" ,style: TextStyle(fontSize: 41,fontWeight: FontWeight.w500),),
                Container(height: 20,),
                TextField(
                  keyboardType: TextInputType.text,
                  // enabled: false,
                  controller: emailText,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                        color: Colors.deepOrange,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    disabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide:  const BorderSide(
                          color: Colors.grey,
                          width: 2
                      ),
                    ),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                Container(height: 11,),

                TextField(
                  keyboardType: TextInputType.text,
                  controller: passText,

                  obscureText: obscurePassword,

                  // obscuringCharacter: '*',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                          color: Colors.deepOrange,
                          width: 2
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    disabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2
                      ),
                    ),
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: const Icon(

                          Icons.remove_red_eye
                      ),
                      onPressed: (){
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      String uEmail = emailText.text.toString();
                      String uPass = passText.text;
                      print("Email : $uEmail , Password : $uPass");
                    },
                    child: const Text(
                        'Login'
                    ))
              ],
            ),
          ),
        )
    );
  }

}
