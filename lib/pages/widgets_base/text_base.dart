import 'package:flutter/cupertino.dart';

class TextComonBase extends StatelessWidget {
  final String text;
  final int colorText;
  final double sizeText;
  final FontWeight? fontWeight;
  const TextComonBase({Key? key, required this.text, required this.colorText, required this.sizeText, this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Color(colorText), fontSize: sizeText, fontWeight: fontWeight),
    );
  }
}
