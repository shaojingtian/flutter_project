import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/carpool/carpool_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/basic/welcome_screen.dart';
import 'package:flash_chat/screens/basic/login_screen.dart';
import 'package:flash_chat/screens/basic/registration_screen.dart';
import 'package:flash_chat/screens/basic/chat_screen.dart';
import 'package:flash_chat/screens/basic/menu_screen.dart';
import 'package:flash_chat/screens/roomfinder/roomfinder_screen.dart';
import 'package:flash_chat/screens/carpool/carpool_screen.dart';
import 'package:flash_chat/screens/studygroup/studygroup_screen.dart';
import 'package:flash_chat/screens/roomfinder/postAd.dart';
import 'package:flash_chat/screens/roomfinder/postAd_withRoom.dart';
import 'package:flash_chat/screens/roomfinder/postAd_withoutRoom.dart';
import 'package:flash_chat/screens/roomfinder/searchRoom.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Caravan());
}

class Caravan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        FrontScreen.id: (context) => FrontScreen(),
        RoomfinderScreen.id: (context) => RoomfinderScreen(),
        CarpoolScreen.id: (context) => CarpoolScreen(),
        StudygroupScreen.id: (context) => StudygroupScreen(),
        RoomfinderPostAd.id: (context) => RoomfinderPostAd(),
        Postad_withRoom.id: (context) => Postad_withRoom(),
        Postad_withoutRoom.id: (context) => Postad_withoutRoom(),
        SearchRoom.id: (context) => SearchRoom(),
      },
    );
  }
}
