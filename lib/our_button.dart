// Define  a Custom Widget
// Now, inside OurButton's curly braces, we'll define the constructor
// arguments and we'll set them
import 'package:flutter/material.dart';

class OurButton extends StatelessWidget {
  const OurButton(
      {Key? key,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      required this.splashColor,
      this.onPressed})
      : super(key: key);

  final String text;
  final Color textColor, backgroundColor, splashColor;
  final VoidCallback? onPressed;

  // Like for all widgets, we need a build method which, in this case, will be:
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: backgroundColor,
      splashColor: splashColor,
      padding: ButtonTheme.of(context).padding,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
