import "package:flutter/material.dart";
import "package:coffee_card/coffee_preps.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Coffee Card",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.brown[700],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              color: Colors.brown[200],
              padding: const EdgeInsets.all(20),
              child: const Text("How I like my coffee..."),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10.0),
              color: Colors.brown[200],
              padding: const EdgeInsets.all(20),
              child: CoffeePreps(),
            ),
          ],
        ),
      ),
    );
  }
}
