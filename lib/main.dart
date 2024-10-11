import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var arrIndex = [1,2,3,4,5,6,7,8,9,10,11];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:  Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrIndex.map((e) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Text('$e',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.lightBlue,
              )
            ),
          )).toList(),
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
