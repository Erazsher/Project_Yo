import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Search"),
        ),
        body: Center(
          child: TextButton(
            child: const Text(
              "This is Search",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onPressed: () => {},
          ),
        ),
      );
}
