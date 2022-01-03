import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kids_learning/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/home_icon2.jpg',
              height: 170,
            ),
            const SizedBox(height: 30),
            // const CircularProgressIndicator(
            //   valueColor: AlwaysStoppedAnimation(Colors.white),
            // )
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: const LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
