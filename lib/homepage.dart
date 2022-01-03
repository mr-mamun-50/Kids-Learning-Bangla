import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids_learning/animals_name.dart';
import 'package:kids_learning/bangla.dart';
import 'package:kids_learning/english.dart';
import 'package:kids_learning/flowers_name.dart';
import 'package:kids_learning/fruits_name.dart';
import 'package:kids_learning/math.dart';

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
      appBar: PreferredSize(
        // preferredSize: Size.fromHeight((screenHeight / 3) - 30),
        preferredSize: Size.fromHeight((screenHeight / 3) - 30),
        child: AppBar(
          backgroundColor: Colors.teal,
          flexibleSpace: ClipRRect(
            child: Container(
              // height: screenHeight / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
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
                      color: Colors.yellow,
                    ),
                  ),
                  const Text(
                    'একের ভিতর সব',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/main_bg4.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('About app'),
                        content: const Text(
                            'This app is a learning app for kids. \n\nDeveloped by- \nMamunur Rashid Mamun \nStudent of SDMGA'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Clipboard.setData(const ClipboardData(
                                      text:
                                          "This app is a learning app for kids. \n\nDeveloped by- \nMamunur Rashid Mamun \nStudent of SDMGA"))
                                  .then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            'Copied to your clipboard !')));
                              });
                            },
                            child: const Text('Copy info'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Close'),
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    ),
                icon: const Icon(Icons.info))
          ],
        ),
      ),
      backgroundColor: const Color(0Xfff0f7f7),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BanglaAlpha()),
                  );
                  setState(() {});
                },
                child: homeCards(
                    'images/bangla.jpg', 'বাংলা', screenWidth, screenHeight),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EnglishAlpha()),
                  );
                  setState(() {});
                },
                child: homeCards(
                    'images/english.jpg', 'ইংরেজি', screenWidth, screenHeight),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MathNumber()),
                  );
                  setState(() {});
                },
                child: homeCards(
                    'images/math.jpg', 'গণিত', screenWidth, screenHeight),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FlowersName()),
                  );
                  setState(() {});
                },
                child: homeCards('images/flower.jpg', 'ফুলের নাম', screenWidth,
                    screenHeight),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FruitsName()),
                  );
                  setState(() {});
                },
                child: homeCards(
                    'images/fruits.jpg', 'ফলের নাম', screenWidth, screenHeight),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimalsName()),
                  );
                  setState(() {});
                },
                child: homeCards(
                    'images/animal.jpg', 'পশুর নাম', screenWidth, screenHeight),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

homeCards(String img, String word, double wdth, double hght) {
  double H = hght - (hght / 3);

  return Container(
    // padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    width: (wdth / 2) - 20,
    height: (H / 3) - 20,
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
        SizedBox(
          height: (H / 3) - 50,
          width: (wdth / 2) - 20,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              img,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          child: Text(
            word,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  );
}
