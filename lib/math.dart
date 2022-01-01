import 'package:flutter/material.dart';
import 'package:kids_learning/math_number.dart';
import 'package:kids_learning/multiplication_table.dart';

class MathNumber extends StatefulWidget {
  const MathNumber({Key? key}) : super(key: key);

  @override
  _MathNumberState createState() => _MathNumberState();
}

class _MathNumberState extends State<MathNumber> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0Xfff0f7f7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight / 3),
        child: AppBar(
          // title: const Text('বাংলা বর্ণমালা'),
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/math3.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.teal.withOpacity(1), BlendMode.overlay),
                ),
              ),
            ),
          ),
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MathNumberCount()),
              );
              setState(() {});
            },
            child: mathCards('সংখ্যা গণনা', screenWidth, screenHeight),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MultiTable()),
              );
              setState(() {});
            },
            child: mathCards('গুণের নামতা', screenWidth, screenHeight),
          ),
        ],
      ),
    );
  }
}

mathCards(String word, double wdth, double hght) {
  double H = hght - (hght / 3);

  return Container(
    // padding: const EdgeInsets.all(10),
    margin:
        EdgeInsets.only(left: 10, right: 10, top: (hght / 3) + 50, bottom: 10),
    width: (wdth / 2) - 20,
    height: (H / 2) - 20,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 7,
          offset: const Offset(0, 0), // changes position of shadow
        ),
      ],
    ),
    child: Container(
      child: Center(
        child: Text(
          word,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          image: AssetImage('images/kFrame4.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
