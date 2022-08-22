import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
     const MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int n= 1;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: const Text('Magic Decision Ball'),
          backgroundColor: Colors.blue[800],
          centerTitle: true,
        ),
        body:  Center(
          child: TextButton(
            onPressed: (){
              setState(() {
                n= Random().nextInt(5)+1;
              });
            },
            child: Image(
                image: AssetImage('images/ball$n.png'),
            ),
          ),
        ),
      ),
    );
  }
}
