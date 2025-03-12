import "package:coffee_card/widgets/styled_body_text.dart";
import "package:coffee_card/widgets/styled_button.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class CoffeePreps extends StatefulWidget {
  const CoffeePreps({super.key});

  //  I don't really understand this line, but I will make it make sense eventually
  @override
  State<CoffeePreps> createState() => _CoffeePrepsState();
}

class _CoffeePrepsState extends State<CoffeePreps> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    if (kDebugMode) {
      setState(() {
        strength = strength < 5 ? ++strength : 1;
      });
      print("increase strength by 1");
    }
  }

  void increaseSugars() {
    if (kDebugMode) {
      setState(() {
        sugars = sugars < 5 ? ++sugars : 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText("Strength: "),
            SizedBox(width: 5),
            for (int i = 0; i < strength; i++)
              Image.asset(
                "assets/images/coffee_bean.png",
                width: 25,
                color: Colors.brown[200],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
              Colors.brown,
              Colors.white,
              onPress: increaseStrength,
              child: Text("+"),
            ),
          ],
        ),
        Row(
          children: [
            StyledBodyText("Sugars: "),

            if (sugars == 0) StyledBodyText("No added sugar..."),

            SizedBox(width: 15),
            // no curly braces for loops in flutter
            for (int i = 0; i < sugars; i++)
              Image.asset(
                "assets/images/sugar_cube.png",
                width: 25,
                color: Colors.brown[200],
                colorBlendMode: BlendMode.multiply,
              ),
            // expanded allows u to take up all the available space
            Expanded(child: SizedBox()),
            StyledButton(
              Colors.brown,
              Colors.white,
              onPress: increaseSugars,
              child: Text("+"),
            ),
          ],
        ),
      ],
    );
  }
}
