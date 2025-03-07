// ignore: file_names
import "package:coffee_card/coffee_preps.dart";
import "package:flutter/material.dart";

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
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.brown[400],
                padding: const EdgeInsets.all(10),
                child: const Text("How I like my coffee..."),
              ),
              Container(
                color: Colors.brown[200],
                padding: const EdgeInsets.all(10),
                child: CoffeePreps(),
              ),
              Expanded(
                child: Image.asset(
                  "assets/images/coffee_bg.jpg",
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
