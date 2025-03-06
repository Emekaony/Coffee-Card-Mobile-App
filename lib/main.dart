import 'package:flutter/material.dart';
import 'package:coffee_card/home.dart';

void main() {
  runApp(Home());
}

class PlayingAround extends StatelessWidget {
  const PlayingAround({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo List",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Clean the house"),
            Text("2. Workout"),
            Text("3. Buy a car & make more money"),
          ],
        ),
      ),
    );
  }
}
