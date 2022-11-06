import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
