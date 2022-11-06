import 'package:bottom_navigation_bar/pages/navpages/bar_item_page.dart';
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
    const BarItemPage(),
    const SearchPage(),
    const MyPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label:("Home"),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp),
            label:("Bar"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label:("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:("My"),
          ),
        ],
      ),
    );
  }
}
