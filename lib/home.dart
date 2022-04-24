import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const MyStatelessWidget());
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
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
            "Tap Here",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    ));
  }
}
