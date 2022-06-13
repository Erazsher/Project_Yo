import 'package:flutter/material.dart';
import 'package:roommate_app/reuse/reusable_widget.dart';
import 'package:roommate_app/utils/color_utils.dart';
import "package:roommate_app/utils/citynames.dart";

// import 'package:lottie/lottie.dart';
import 'roomAddedanim.dart';

class RoomSetup extends StatefulWidget {
  const RoomSetup({Key? key}) : super(key: key);

  @override
  State<RoomSetup> createState() => _RoomSetupState();
}

class _RoomSetupState extends State<RoomSetup> {
  TextEditingController _roomName = TextEditingController();
  TextEditingController _roomPlace = TextEditingController();
  TextEditingController _roomAddress = TextEditingController();

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
            child: SingleChildScrollView(
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
                      reusableTextField(
                          "Place Name", Icons.place, false, _roomPlace),
                      const SizedBox(
                        height: 20,
                      ),
                      reusableTextBox(
                          "Address", Icons.place, false, _roomAddress),
                      const SizedBox(
                        height: 10,
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
                    ])))));
  }
}

// @immutable
// class City {
//   const City({
//     required this.cityname,
//   });

//   final String cityname;

//   @override
//   String toString() {
//     return '$cityname';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (other.runtimeType != runtimeType) {
//       return false;
//     }
//     return other is City && other.cityname == cityname;
//   }

//   @override
//   int get hashCode => Object.hash(cityname);
// }

// class AutocompleteBasicUserExample extends StatelessWidget {
//   const AutocompleteBasicUserExample({Key? key}) : super(key: key);

//   static const List<City> _userOptions = cityNames;

//   static String _displayStringForOption(City option) => option.cityname;

//   @override
//   Widget build(BuildContext context) {
//     return Autocomplete<City>(
//       displayStringForOption: _displayStringForOption,
//       optionsBuilder: (TextEditingValue textEditingValue) {
//         if (textEditingValue.text == '') {
//           return const Iterable<City>.empty();
//         }
//         return _userOptions.where((City option) {
//           return option
//               .toString()
//               .contains(textEditingValue.text.toLowerCase());
//         });
//       },
//       onSelected: (City selection) {
//         debugPrint('You just selected ${_displayStringForOption(selection)}');
//       },
//     );
//   }
// }
