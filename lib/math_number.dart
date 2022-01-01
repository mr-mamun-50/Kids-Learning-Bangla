import 'package:flutter/material.dart';

class MathNumberCount extends StatefulWidget {
  const MathNumberCount({Key? key}) : super(key: key);

  @override
  _MathNumberCountState createState() => _MathNumberCountState();
}

class _MathNumberCountState extends State<MathNumberCount> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var nCntN = [
      '১',
      '২',
      '৩',
      '৪',
      '৫',
      '৬',
      '৭',
      '৮',
      '৯',
      '১০',
      '১১',
      '১২',
      '১৩',
      '১৪',
      '১৫',
      '১৬',
      '১৭',
      '১৮',
      '১৯',
      '২০'
    ];
    var nCntW = [
      'এক',
      'দুই',
      'তিন',
      'চার',
      'পাঁচ',
      'ছয়',
      'সাত',
      'আট',
      'নয়',
      'দশ',
      'এগারো',
      'বারো',
      'তেরো',
      'চৌদ্দ',
      'পনেরো',
      'ষোলো',
      'সতেরো',
      'আঠারো',
      'উনিশ',
      'বিশ'
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
                  'সংখ্যা গণনা',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: screenHeight / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/math4.jpg'),
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
        children: List<Widget>.generate(20, (index) {
          return GridTile(
            child: Card(
              color: Colors.white,
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        nCntN[index],
                        style: const TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        nCntW[index],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage('images/fFrame4.jpg'),
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
