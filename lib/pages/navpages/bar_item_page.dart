import 'package:bottom_navigation_bar/utils/todo_tile.dart';
import 'package:flutter/material.dart';


class BarItemPage extends StatefulWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  State<BarItemPage> createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bar Items'),
      ),
      body: ListView(
        children: [
          ToDoTile(),
        ],
      ),
    );
  }
}

