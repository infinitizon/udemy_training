import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final myText;
  TextOutput(this.myText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(myText),
    );
  }
}
