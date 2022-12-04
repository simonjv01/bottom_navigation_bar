import 'package:bottom_navigation_bar/pages/navpages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {

  // init the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      theme: ThemeData(
      primarySwatch: Colors.blue,
      )
    );
  }
}
