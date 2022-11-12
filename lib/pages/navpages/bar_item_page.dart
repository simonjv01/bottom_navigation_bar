import 'package:bottom_navigation_bar/utils/todo_tile.dart';
import 'package:flutter/material.dart';


class BarItemPage extends StatefulWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  State<BarItemPage> createState() => _BarItemPageState();
}




class _BarItemPageState extends State<BarItemPage> {

  // list of todo tasks
  List toDoList = [
    ["Make Tutorial", false],
    ["Buy Milk", false],
    ["Send Email", false],
    ["Make Payment", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bar Items'),
      ),
      body: ListView.builder(
      itemCount: toDoList.length,
      itemBuilder: (context, index) {
        return ToDoTile(
          taskName: toDoList[index][0],
          taskCompleted: toDoList[index][1],
          onChanged: (value) => checkBoxChanged(value, index),
        );
      },
    )
    );
  }
}

