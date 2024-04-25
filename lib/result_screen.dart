import 'package:flutter/material.dart';
import 'package:flutter_front_page/data/question.dart';
import 'package:flutter_front_page/questionsumary.dart';
import 'package:flutter_front_page/start_screen.dart';

class ResultScreen extends StatelessWidget {
  final chooseanswer;
  const ResultScreen({super.key, required this.chooseanswer});

  List<Map<String, Object>> getsummarydata() {
    List<Map<String, Object>> Summary = [];
    for (var i = 0; i < chooseanswer.length; i++) {
      Summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chooseanswer[i]
      });
    }
    return Summary;
  }

  @override
  Widget build(BuildContext context) {
    var summarydata = getsummarydata();
    final totalquestion = questions.length;
    final rightanswer = summarydata.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 25, 2, 73),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'You scored $rightanswer of the ${totalquestion - 1} question correctly',
                  style: const TextStyle(fontSize: 20, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Questionsumary(summarydata),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(
                  icon: const Icon(
                    Icons.restart_alt,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StartScreen(),
                        ));
                  },
                  label: const Text(
                    'restart quiz ',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
