import 'package:flutter/material.dart';
import '../basic/login_screen.dart';
import '../basic/registration_screen.dart';
import 'package:flash_chat/components/rounded_button.dart';

class CarpoolScreen extends StatefulWidget {
  static const String id = 'carpool_screen';

  @override
  _CarpoolScreenState createState() => _CarpoolScreenState();
}

class _CarpoolScreenState extends State<CarpoolScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RoundedButton(
              title: 'Search for a car',
              colour: Colors.deepPurpleAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Search for a rider',
              colour: Colors.deepPurpleAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Post Ad',
              colour: Colors.deepPurple,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
