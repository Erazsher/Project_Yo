import 'package:flutter/material.dart';
import 'package:roommate_app/screens/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  Future currentuserid() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    return auth.currentUser?.uid;
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('NotifyStack')
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: const Text(
                    'No Data...',
                  ),
                );
              } else {
//           <DocumentSnapshot> items = snapshot.data!.docs;
//           return new ListView.builder(
//             itemCount: snapshot.data.docs.length,
//             itemBuilder: (context, index) {
//               DocumentSnapshot ds = snapshot.data.documents[index];
//               return new Lost_Card(
//                 headImageAssetPath : ds["url"];

// );
                print("Nodata");
              }
              return Center(child: Text(snapshot.data!.toString()));
            }),
      );
}
