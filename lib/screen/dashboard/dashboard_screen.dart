import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:astrotalk_app/screen/dashboard/call_screen.dart';
import 'package:astrotalk_app/screen/dashboard/chat_screen.dart';
import 'package:astrotalk_app/screen/dashboard/home_screen.dart';
import 'package:astrotalk_app/screen/dashboard/live_screen.dart';
import 'package:astrotalk_app/screen/dashboard/remedies_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  int selectedScreen = 0;


  void changeTab(int index) {
    setState(() {
      selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final List<Widget> _screen = [
      HomeScreen(onTabChange: changeTab,),
      ChatScreen(),
      LiveScreen(),
      CallScreen(),
      RemediesScreen(),
    ];

    return Scaffold(
      body: _screen[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedScreen,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        unselectedLabelStyle: myTextStyle12(),
        selectedLabelStyle: myTextStyle12(),
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,

        onTap: (index) {
          setState(() {
            selectedScreen = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: "Live"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.healing), label: "Remedies"),
        ],
      ),
    );
  }
}
