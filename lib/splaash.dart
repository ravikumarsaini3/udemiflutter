import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_front_page/start_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return  StartScreen();
          },
        ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome TO The Flutter',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
          
            CircularProgressIndicator(
              backgroundColor: Colors.black,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
