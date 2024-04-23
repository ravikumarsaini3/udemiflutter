import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String answertext;
  final void Function() ontap;
  const Button({super.key, required this.answertext, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: ElevatedButton(
            onPressed: ontap,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.white,
              foregroundColor: Colors.green,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                answertext,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
}
