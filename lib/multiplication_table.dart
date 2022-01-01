import 'package:flutter/material.dart';

class MultiTable extends StatefulWidget {
  const MultiTable({Key? key}) : super(key: key);

  @override
  _MultiTableState createState() => _MultiTableState();
}

class _MultiTableState extends State<MultiTable> {
  var images = [
    'images/Miltiplication_table/one.png',
    'images/Miltiplication_table/two.png',
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
                  'গুণের নামতা',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: screenHeight / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/math2.jpg'),
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
                  index = images.length - 1;
                }
                setState(() {});
              },
              child: const Icon(
                Icons.arrow_left,
                size: 50,
              ),
            ),
            Image.asset(
              images[index],
              width: screenWidth - 100,
              height: 300,
            ),
            InkWell(
              onTap: () {
                index += 1;
                if (index > images.length - 1) {
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
