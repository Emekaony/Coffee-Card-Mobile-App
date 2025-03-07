import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class CoffeePreps extends StatelessWidget {
  const CoffeePreps({super.key});

  void increase_strength() {
    if (kDebugMode) {
      print("increase strength by 1");
    }
  }

  void increase_sugars() {
    if (kDebugMode) {
      print("increase sugars by 1");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Strength: "),
            Text("3"),
            Image.asset(
              "assets/images/coffee_bean.png",
              width: 25,
              color: Colors.brown[200],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increase_strength,
              child: Icon(Icons.add),
            ),
          ],
        ),
        Row(
          children: [
            Text("Sugars: "),
            Text("3"),
            Image.asset("assets/images/sugar_cube.png", width: 25),
            // expanded allows u to take up all the available space
            Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increase_sugars,
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ],
    );
  }
}
