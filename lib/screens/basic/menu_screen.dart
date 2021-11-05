import 'package:flash_chat/screens/carpool/carpool_screen.dart';
import 'package:flash_chat/screens/roomfinder/roomfinder_screen.dart';
import 'package:flash_chat/screens/studygroup/studygroup_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/screens/basic/chat_screen.dart';

class FrontScreen extends StatefulWidget {
  static const String id = 'front_screen';

  @override
  _FrontScreenState createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message_rounded),
        onPressed: () {
          Navigator.pushNamed(context, ChatScreen.id);
        },
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(centerTitle: true, title: Text('Connect with your need ')),
      // backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RoomfinderScreen.id);
                      },
                      child: Card(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.house_outlined,
                            size: 60,
                          ),
                          Text('Room/Roomate')
                        ],
                      ))),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, CarpoolScreen.id);
                      },
                      child: Card(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.directions_car_outlined,
                            size: 60,
                          ),
                          Text('Grocery Carpool')
                        ],
                      ))),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, StudygroupScreen.id);
                      },
                      child: Card(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.menu_book,
                            size: 60,
                          ),
                          Text('Study Group')
                        ],
                      ))),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {},
                      child: Card(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.wine_bar_outlined,
                            size: 60,
                          ),
                          Text('Friends')
                        ],
                      ))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
