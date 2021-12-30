import 'package:flutter/material.dart';

class MathNumber extends StatefulWidget {
  const MathNumber({Key? key}) : super(key: key);

  @override
  _MathNumberState createState() => _MathNumberState();
}

class _MathNumberState extends State<MathNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('সংখ্যা গণনা'),
      ),
      body: Column(),
    );
  }
}
