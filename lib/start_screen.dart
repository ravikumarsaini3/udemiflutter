import 'package:flutter/material.dart';
import 'package:flutter_front_page/data/question.dart';
import 'package:flutter_front_page/questions.dart';
import 'package:flutter_front_page/result_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  List<String> selectedanswer = [];
  void chooseanswer(String answer) {
    selectedanswer.add(answer);
    if (selectedanswer.length == questions.length - 1) {
      setState(() {
        // selectedanswer = [];
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(chooseanswer: selectedanswer),
            ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: const Color.fromARGB(94, 73, 39, 176),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          'Start Screen ',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color.fromARGB(200, 73, 39, 176),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  shape: BoxShape.rectangle),
              child: Image.asset(
                width: 220,
                'assets/images/flutter-3.png',
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Learn Flutter To The Fun Way ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
                icon: const Icon(
                  Icons.arrow_right_alt,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Questions(
                        onselectanswer: chooseanswer,
                      );
                    },
                  ));
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green.shade300,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.red,
                  elevation: 2,
                ),
                label: const Text('Start Quiz '))
          ],
        ),
      ),
    );
  }
}
