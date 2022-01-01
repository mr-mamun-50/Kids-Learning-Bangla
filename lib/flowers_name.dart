import 'package:flutter/material.dart';

class FlowersName extends StatefulWidget {
  const FlowersName({Key? key}) : super(key: key);

  @override
  _FlowersNameState createState() => _FlowersNameState();
}

class _FlowersNameState extends State<FlowersName> {
  var images = [
    'images/Flowers/sapla.jpg',
    'images/Flowers/golap.jpg',
    'images/Flowers/joba.jpg',
    'images/Flowers/beli.webp',
    'images/Flowers/রজনীগন্ধা.png',
    'images/Flowers/টগর.webp',
    'images/Flowers/tulip.png',
    'images/Flowers/কৃষ্ণচূড়া.jpg'
  ];
  var names = [
    'শাপলা',
    'গোলাপ',
    'জবা',
    'বেলি',
    'রজনিগন্ধ্যা',
    'টগর',
    'টিউলিপ',
    'কৃষ্ণচূড়া'
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0Xfff0f7f7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight / 3),
        child: AppBar(
          backgroundColor: Colors.teal,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
            child: Container(
              child: const Center(
                child: Text(
                  'ফুলের নাম',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: screenHeight / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/flower.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.darken),
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
      body: Container(
        padding: EdgeInsets.only(top: (screenHeight / 3) + 30),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                index -= 1;
                if (index < 0) {
                  index = names.length - 1;
                }
                setState(() {});
              },
              child: const Icon(
                Icons.arrow_left,
                size: 50,
              ),
            ),
            Column(
              children: [
                Image.asset(
                  images[index],
                  width: screenWidth - 100,
                  height: 250,
                ),
                Text(
                  names[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                index += 1;
                if (index > names.length - 1) {
                  index = 0;
                }
                setState(() {});
              },
              child: const Icon(
                Icons.arrow_right,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
