import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Coffee Card"),
          backgroundColor: Colors.brown[700],
        ),
        body: Container(
          color: Colors.orange,
          width: 200,
          height: 200,
          margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
          child: Text("Hello Emeka"),
        ),
      ),
    );
  }
}
