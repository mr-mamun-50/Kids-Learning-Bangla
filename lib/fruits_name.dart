import 'package:flutter/material.dart';

class FruitsName extends StatefulWidget {
  const FruitsName({Key? key}) : super(key: key);

  @override
  _FruitsNameState createState() => _FruitsNameState();
}

class _FruitsNameState extends State<FruitsName> {
  var images = [
    'images/Fruits/Mango.jpg',
    'images/Fruits/jam.jpg',
    'images/Fruits/kathal.jpg',
    'images/Fruits/lichu.jpg',
    'images/Fruits/apple.jpg',
    'images/Fruits/kola.png',
    'images/Fruits/Orrange.webp',
    'images/Fruits/grapes1.jpg'
  ];
  var names = ['আম', 'জাম', 'কাঁঠাল', 'লিচু', 'আপেল', 'কলা', 'কমলা', 'আঙুর'];
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
                  'ফলের নাম',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: screenHeight / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/fruits.jpg'),
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
