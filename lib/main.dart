import 'package:flutter/material.dart';
import 'package:coffee_card/home.dart';

void main() {
  runApp(Home());
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SandBox"),
          backgroundColor: Colors.grey,
        ),
        body: Text("emeka"),
      ),
    );
  }
}
