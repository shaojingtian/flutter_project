import 'package:flutter/material.dart';

import './Home.dart';
import './Search.dart';
import './Calendar.dart';
import './NewStudyGroup.dart';

class StudyGroupMenu extends StatefulWidget {
  static const String id = 'study_group_menu';
  @override
  _StudyGroupMenuState createState() => _StudyGroupMenuState();
}

class _StudyGroupMenuState extends State<StudyGroupMenu> {
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    SearchPage(),
    CalendarPage(),
    NewStudyGroupPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Study Groups')),
          backgroundColor: Colors.blue,
        ),
        body: _pageOptions[_selectedPage],
        floatingActionButton: FloatingActionButton.extended(
            icon: Icon(Icons.group),
            label: Text('New'),
            onPressed: () {
              print('Create Study Group');
            },
            backgroundColor: Colors.blue),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.date_range), label: 'Calendar'),
          ],
        ),
      ),
    );
  }
}
