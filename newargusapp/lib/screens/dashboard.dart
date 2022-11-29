import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newargusapp/screens/nav_screens/home_screen.dart';
import 'package:newargusapp/screens/nav_screens/live_tv_screen.dart';
import 'package:newargusapp/screens/nav_screens/news_screen.dart';
import 'package:newargusapp/screens/nav_screens/settings_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // All Screens
  List screens =[
    const HomeScreen(),
    const NewsScreen(),
    const LiveTvScreen(),
    const SettingsScreen(),
  ];

  int currentIndex = 0;
  // On tap method
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.blueGrey,
        // showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        // elevation: 2,
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            // icon: FaIcon(FontAwesomeIcons.house),
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // icon: FaIcon(FontAwesomeIcons.newspaper),
            icon: Icon(Icons.newspaper_outlined),
            activeIcon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            // icon: FaIcon(FontAwesomeIcons.tv),
            icon: Icon(Icons.live_tv),
            activeIcon: Icon(Icons.live_tv_outlined),
            label: 'Live TV',
          ),
          BottomNavigationBarItem(
            // icon: FaIcon(FontAwesomeIcons.gear),
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
