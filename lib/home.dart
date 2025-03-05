import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Coffee Card"),
          backgroundColor: Colors.brown[700],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
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
              child: const Text("How I like my coffee..."),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10.0),
              color: Colors.brown[200],
              padding: const EdgeInsets.all(20),
              child: const Text("How I like my coffee..."),
            ),
          ],
        ),
      ),
    );
  }
}
