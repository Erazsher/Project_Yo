import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: Center(
          child: TextButton(
            child: const Text(
              "THis is Profile",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onPressed: () => {},
          ),
        ),
      );
}
