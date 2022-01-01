import 'package:flutter/material.dart';

class EngCapital extends StatefulWidget {
  const EngCapital({Key? key}) : super(key: key);

  @override
  _EngCapitalState createState() => _EngCapitalState();
}

class _EngCapitalState extends State<EngCapital> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var eCptl = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z'
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
                  'Capital Letters',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: screenHeight / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/engLetter.jpg'),
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
        crossAxisCount: 4,
        // mainAxisSpacing: 5,
        // crossAxisSpacing: 5,
        children: List<Widget>.generate(26, (index) {
          return GridTile(
            child: Card(
              color: Colors.white,
              child: Container(
                child: Center(
                  child: Text(
                    eCptl[index],
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
                    image: AssetImage('images/fFrame1.jpg'),
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
