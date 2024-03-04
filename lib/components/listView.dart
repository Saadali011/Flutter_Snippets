// import 'dart:html';
import 'package:flutter/material.dart';
void main(){
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.blue,
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

  var arrNames = ["Saad","Suleman","Najeeb","Abrar","Mubashir"];
  var arrNumbers = [0323132,03231231,03213123,03213123,03123123];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor : Colors.green,
                maxRadius: 50,
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 38,
                        height: 38,
                        child: Image.asset('assets/images/boy1.png'),
                      ),
                    ],
                  ),
                ),
              ),
              title: Text(
                arrNames[index],
                style: const TextStyle(fontSize: 21,fontWeight: FontWeight.w500),
              ) ,
              subtitle: Text(arrNumbers[index].toString()),
              trailing: InkWell(
                onTap: (){},
                onLongPress: (){},
                borderRadius: BorderRadius.circular(50),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child:Icon(Icons.add , size: 30, color: Colors.blue,),
                ),
              ) ,

            ),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context,index){
          return const Divider(
            height: 20,
            thickness: 1,
          );
        },
      ),
    );
  }

}
