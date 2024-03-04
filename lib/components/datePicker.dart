import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portal' ,style: TextStyle(fontWeight: FontWeight.w500),),
        backgroundColor: Colors.blue,
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select Date : " ,
              style:  TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
            ElevatedButton(onPressed: () async {
              DateTime? datePicked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2025),
              );
              if(datePicked!=null){
                print('Date selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
              }
            }, child: const Text("Show")),
            ElevatedButton(onPressed: () async {
              TimeOfDay? pickedTime =  await showTimePicker(context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input,
                // initialEntryMode: TimePickerEntryMode.dial
              );
              if(pickedTime!= null){
                print("Time Selected: ${pickedTime.hour}-${pickedTime.minute}");
              }
            }, child: const Text("Select Time")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}


