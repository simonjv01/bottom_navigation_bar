import 'package:bottom_navigation_bar/pages/navpages/bar_item_page.dart';
import 'package:bottom_navigation_bar/pages/navpages/home_page.dart';
import 'package:bottom_navigation_bar/pages/navpages/my_page.dart';
import 'package:bottom_navigation_bar/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage()
  ];
  int currentIndex = 0;
  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: _onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black45.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp),
            label: ("Bar"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("My"),
          ),
        ],
      ),
    );
  }
}
