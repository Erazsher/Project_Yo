import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Notification"),
        ),
        body: Center(
          child: TextButton(
            child: const Text(
              "This is notification",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onPressed: () => {},
          ),
        ),
      );
}
