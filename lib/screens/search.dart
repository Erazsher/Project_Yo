import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'searchservice.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => new _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController seach_contro = TextEditingController();
  late QuerySnapshot snapshotData;
  bool is_exicuted = false;
  @override
  Widget build(BuildContext context) {
    Widget searchdData() => ListView.builder(
          itemCount: snapshotData.docs.length,
          itemBuilder: ((context, int index) {
            return GestureDetector(
              onTap: () {
                print("object");
              },
              child: ListTile(
                title: Text(
                  snapshotData.docs[index]["roomPlace"].toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0),
                ),
                subtitle: Text(
                  snapshotData.docs[index]["roomName"].toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0),
                ),
              ),
            );
          }),
        );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          GetBuilder<SearchService>(
            init: SearchService(),
            builder: (val) {
              // return IconButton(
              //     onPressed: () {
              //       String searchterm = seach_contro.text;
              //       searchterm =
              //           searchterm[0].toUpperCase() + searchterm.substring(1);
              //       val.queryData(searchterm).then((value) {
              //         snapshotData = value;
              //         setState(() {
              //           is_exicuted = true;
              //         });
              //       });
              //     },
              //     icon: const Icon(Icons.search));
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: TextField(
                    onChanged: (value) {
                      String searchterm = seach_contro.text;
                      if (seach_contro.text != "") {
                        searchterm = searchterm[0].toUpperCase() +
                            searchterm.substring(1);
                      }
                      val.queryData(searchterm).then((vall) {
                        snapshotData = vall;
                        setState(() {
                          is_exicuted = true;
                        });
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                    controller: seach_contro,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 25.0),
                        hintText: 'Search by name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0))),
                  ),
                ),
              );
            },
          )
        ],
        // title: TextField(
        //   style: TextStyle(color: Colors.white),
        //   controller: seach_contro,
        //   decoration: InputDecoration(
        //       contentPadding: EdgeInsets.only(left: 25.0),
        //       hintText: 'Search by name',
        //       border:
        //           OutlineInputBorder(borderRadius: BorderRadius.circular(4.0))),
        // ),
      ),
      body: is_exicuted
          ? searchdData()
          : Container(
              child: Center(child: Text("Search Here")),
            ),
    );
  }
}
