import "package:flutter/material.dart";

class StyledButton extends StatelessWidget {
  const StyledButton(
    this.backgroundColor,
    this.foregroundColor, {
    super.key,
    required this.onPress,
    required this.child,
  });

  final Color backgroundColor;
  final Color foregroundColor;
  final void Function() onPress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      onPressed: onPress,
      child: child,
    );
  }
}
