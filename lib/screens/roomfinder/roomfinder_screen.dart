import 'package:flutter/material.dart';
import '../basic/login_screen.dart';
import '../basic/registration_screen.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/screens/roomfinder/postAd.dart';
import 'package:flash_chat/screens/roomfinder/searchRoom.dart';
import 'package:flash_chat/screens/basic/chat_screen.dart';
import 'package:flash_chat/components/NavigationBar.dart';

class RoomfinderScreen extends StatefulWidget {
  static const String id = 'roomfinder_screen';

  @override
  _RoomfinderScreenState createState() => _RoomfinderScreenState();
}

class _RoomfinderScreenState extends State<RoomfinderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Room/Roommate')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SquaredButton(
              title: 'Search for a room',
              colour: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, SearchRoom.id);
              },
            ),
            SquaredButton(
              title: 'Search for a roommate',
              colour: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              height: 80.0,
            ),
            RoundedButton(
              title: 'Post Ad',
              colour: Colors.lightBlue,
              onPressed: () {
                Navigator.pushNamed(context, RoomfinderPostAd.id);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
