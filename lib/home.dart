import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(
          child: TextButton(
            child: const Text(
              "This is Home",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onPressed: () => {},
          ),
        ),
      );
}
