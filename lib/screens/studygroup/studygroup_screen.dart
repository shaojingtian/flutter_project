import 'package:flutter/material.dart';
import '../basic/login_screen.dart';
import '../basic/registration_screen.dart';
import 'package:flash_chat/components/rounded_button.dart';

class StudygroupScreen extends StatefulWidget {
  static const String id = 'studygroup_screen';

  @override
  _StudygroupScreenState createState() => _StudygroupScreenState();
}

class _StudygroupScreenState extends State<StudygroupScreen> {
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
              title: 'Search for a group',
              colour: Colors.deepPurpleAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Search for a person',
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
