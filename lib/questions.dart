import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_front_page/botton.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(167, 69, 43, 156),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            ' Questions ',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          Button(answertext: 'answer no 1', ontap: () {}),
          const SizedBox(
            height: 10,
          ),
          Button(answertext: 'answer no 2', ontap: () {}),
          const SizedBox(
            height: 10,
          ),
          Button(answertext: 'answer no 3', ontap: () {}),
        ],
      )),
    );
  }
}
