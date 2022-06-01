import 'package:flutter/material.dart';
import 'package:roommate_app/screens/home.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            NotificationWidigit(),
            NotificationWidigit(),
            NotificationWidigit(),
          ],
        ),
      ));

  Widget NotificationWidigit() => ListTile(
        onTap: (() {}),
        contentPadding: EdgeInsets.all(16),
        title: Text('Notification title'),
        subtitle: Text('Notification Body.......'),
        iconColor: Colors.blue,
      );
}
