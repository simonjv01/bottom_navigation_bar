

import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference the box
  final _myBox = Hive.box('myBox');

  // run this method if its first time opening app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
      ];
    }

    // load the data from database
    void loadData() {
      toDoList = _myBox.get("TODOLIST");
  }

    // update database
    void updateDataBase() {
      _myBox.put("TODOLIST", toDoList);
    }
}