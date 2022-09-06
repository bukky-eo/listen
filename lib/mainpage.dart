import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/screens/account/profile.dart';
import 'package:music_app/screens/homepage/home.dart';
import 'package:music_app/screens/music/userMusic.dart';
import 'package:music_app/screens/search/getMusic.dart';

class MusicView extends StatefulWidget {
  const MusicView({Key? key}) : super(key: key);

  @override
  State<MusicView> createState() => _MusicViewState();
}

class _MusicViewState extends State<MusicView> {
  int selectedIndex = 0;

  void navBarTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = const [
    Home(),
    Profile(),
    GetMusic(),
    UserMusic(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: navBarTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass), label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.music_note_2), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ''),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}