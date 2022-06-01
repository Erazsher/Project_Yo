import 'package:flutter/material.dart';
import "search.dart";
import 'package:roommate_app/utils/color_utils.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Home"),
      ),
      // body: const MyStatelessWidget());
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("587F0E"),
          hexStringToColor("02C4C4"),
          hexStringToColor("095B7C")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: ListView(
          children: <Widget>[
            BuildBasicCard(),
            BuildBasicCard2(),
            BuildBasicCard3(),
            BuildBasicCard4()
          ],
          scrollDirection: Axis.vertical,
        ),
      ));

  Widget BuildBasicCard() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: const AssetImage("assets/images/image.jpg"),
              height: 240,
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {},
              ),
            ),
            const Text(
              "Host A Room",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      );

  Widget BuildBasicCard2() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: const AssetImage("assets/images/image2.jpg"),
              height: 240,
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {},
              ),
            ),
            const Text(
              "Join A Room",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      );

  Widget BuildBasicCard3() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: const AssetImage("assets/images/image4.jpg"),
              height: 240,
              fit: BoxFit.cover,
              child: InkWell(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              }),
            ),
            const Text(
              "Search A Room",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      );

  Widget BuildBasicCard4() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: const AssetImage("assets/images/image3.jpg"),
              height: 240,
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {},
              ),
            ),
            const Text(
              "Rent A Room",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      );
}

// class MyStatelessWidget extends StatelessWidget {
