import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, String? title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile ',
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  image: const NetworkImage(
                      'https://images.unsplash.com/photo-1485160497022-3e09382fb310?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                ),
                const Positioned(
                    bottom: -50.0,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                    ))
              ]),
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Center(child: Text('Profile Name')),
            subtitle: Center(child: Text('Place staying')),
          ),
          ListTile(
            title: Text('Intrests'),
            subtitle: Text('User can specify different intrests'),
          ),
          SizedBox(
            height: 20,
          ),
          // ListTile(
          //   title: Text('Education'),
          //   subtitle: Text(
          //       'Higher Institute of Computer Science and Multimedia of Sfax '),
          // ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text('Social'),
            subtitle: Row(
              children: [
                Expanded(
                  child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                      ),
                      onPressed: () {}),
                ),
                Expanded(
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: () {}),
                ),
                Expanded(
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      onPressed: () {}),
                ),
                Expanded(
                  child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
