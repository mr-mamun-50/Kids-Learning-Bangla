import 'package:flutter/material.dart';

class bConsonant extends StatefulWidget {
  const bConsonant({Key? key}) : super(key: key);

  @override
  _bConsonantState createState() => _bConsonantState();
}

class _bConsonantState extends State<bConsonant> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var bConsonant = [
      'ক',
      'খ',
      'গ',
      'ঘ',
      'ঙ',
      'চ',
      'ছ',
      'জ',
      'ঝ',
      'ঞ',
      'ট',
      'ঠ',
      'ড',
      'ঢ',
      'ণ',
      'ত',
      'থ',
      'দ',
      'ধ',
      'ন',
      'প',
      'ফ',
      'ব',
      'ভ',
      'ম',
      'য',
      'র',
      'ল',
      'শ',
      'ষ',
      'স',
      'হ',
      'ড়',
      'ঢ়',
      'য়',
      'ৎ',
      'ং',
      'ঃ',
      ' ঁ'
    ];

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
                  'ব্যঞ্জনবর্ণ',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: screenHeight / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/banglaWord.jpg'),
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
      body: GridView.count(
        // padding: EdgeInsets.all(10),
        crossAxisCount: 5,
        // mainAxisSpacing: 5,
        // crossAxisSpacing: 5,
        children: List<Widget>.generate(39, (index) {
          return GridTile(
            child: Card(
              color: Colors.white,
              child: Container(
                child: Center(
                  child: Text(
                    bConsonant[index],
                    style: const TextStyle(
                      fontSize: 45,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage('images/fFrame5.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
