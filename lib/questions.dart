import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_front_page/botton.dart';
import 'package:flutter_front_page/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  final void Function(String answer) onselectanswer;
  const Questions({super.key, required this.onselectanswer});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentquestionindex = 0;
  void questionAnswer(String selectedanswer) {
    widget.onselectanswer(selectedanswer);
    setState(() {
      currentquestionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[currentquestionindex];
    return Scaffold(
      backgroundColor: const Color.fromARGB(167, 69, 43, 156),
      body: Center(
          child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                currentquestion.text,
                style: GoogleFonts.abel(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ...currentquestion.getShuffledAnswer().map(
              (answer) {
                return Button(
                    answertext: answer,
                    ontap: () {
                      questionAnswer(answer);
                    });
              },
            ),
            const SizedBox(
              height: 10,
            )
            /*  Button(answertext: currentquestion.answer[0], ontap: () {}),
            const SizedBox(
              height: 10,
            ),
            Button(answertext: currentquestion.answer[1], ontap: () {}),
            const SizedBox(
              height: 10,
            ),
            Button(answertext: currentquestion.answer[2], ontap: () {}),
            const SizedBox(
              height: 10,
            ),
            Button(answertext: currentquestion.answer[3], ontap: () {}),*/
          ],
        ),
      )),
    );
  }
}
