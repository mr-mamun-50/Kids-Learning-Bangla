import 'package:flutter/material.dart';

class EnglishAlpha extends StatefulWidget {
  const EnglishAlpha({Key? key}) : super(key: key);

  @override
  _EnglishAlphaState createState() => _EnglishAlphaState();
}

class _EnglishAlphaState extends State<EnglishAlpha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ইংরেজি বর্ণমালা'),
      ),
      body: Column(),
    );
  }
}
