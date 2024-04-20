import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Color.fromARGB(254, 73, 39, 176),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          'Start Screen ',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color.fromARGB(245, 73, 39, 176),
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
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Learn ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'Flutter ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'To The ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'Fun  ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'Way ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
                icon: const Icon(
                  Icons.arrow_right_alt,
                ),
                onPressed: () {},
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
