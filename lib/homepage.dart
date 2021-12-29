import 'package:flutter/material.dart';
import 'package:kids_learning/grid_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: const Color(0Xfff0f7f7),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight / 3,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/home_icon.jpg',
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'আদর্শ লিপি',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
                const Text(
                  'একের ভিতর সব',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ],
            ),
          ),
          Row(
            children: [
              homeCards(
                  'images/bangla.jpg', 'বাংলা', screenWidth, screenHeight),
              homeCards(
                  'images/english.jpg', 'ইংরেজি', screenWidth, screenHeight),
            ],
          ),
          Row(
            children: [
              homeCards('images/math.jpg', 'গণিত', screenWidth, screenHeight),
              homeCards('images/children.jpg', 'ফুলের নাম', screenWidth,
                  screenHeight),
            ],
          ),
          Row(
            children: [
              homeCards(
                  'images/children.jpg', 'ফলের নাম', screenWidth, screenHeight),
              homeCards(
                  'images/children.jpg', 'পশুর নাম', screenWidth, screenHeight),
            ],
          ),
        ],
      ),
    );
  }
}

homeCards(String img, String word, double wdth, double hght) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    width: (wdth / 2) - 20,
    height: ((hght - hght / 3) / 3) - 20,
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
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Image.asset(
            img,
            height: hght / 9.9,
            fit: BoxFit.fitWidth,
          ),
        ),
        Text(word),
      ],
    ),
  );
}
