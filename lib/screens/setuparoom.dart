import 'package:flutter/material.dart';
import 'package:roommate_app/reuse/reusable_widget.dart';
import 'package:roommate_app/utils/color_utils.dart';
import 'package:lottie/lottie.dart';
import 'roomAddedanim.dart';

class RoomSetup extends StatefulWidget {
  const RoomSetup({Key? key}) : super(key: key);

  @override
  State<RoomSetup> createState() => _RoomSetupState();
}

class _RoomSetupState extends State<RoomSetup> {
  TextEditingController _roomName = TextEditingController();
  TextEditingController _roomPlace = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.9),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // decoration: BoxDecoration(
            //  begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            // alignment: Alignment.center,
            child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  reusableTextField(
                      "Enter Room Name", Icons.abc, false, _roomName),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Place", Icons.place, false, _roomPlace),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement<void, void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const AnimationSuccsus(),
                          ),
                        );
                      },
                      child: const Text(
                        "Add Room",
                        style: TextStyle(fontSize: 20),
                      ))
                ]))));
  }
}
