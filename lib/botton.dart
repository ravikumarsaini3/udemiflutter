import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String answertext;
  final void Function() ontap;
  const Button({super.key, required this.answertext, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
        ),
        child: Text(
          answertext,
          style: TextStyle(fontWeight: FontWeight.w700),
        ));
  }
}
