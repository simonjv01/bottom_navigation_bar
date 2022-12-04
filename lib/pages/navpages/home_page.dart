import 'package:bottom_navigation_bar/data/database.dart';
import 'package:bottom_navigation_bar/utils/dialog_box.dart';
import 'package:bottom_navigation_bar/utils/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference the box
  final _myBox = Hive.box('myBox');
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState() {
    // if this is the first time ever opening the app, then create default data
    if  (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      // there already exist data
      db.loadData();
    }
    super.initState();
  }


  // text controller
  final _controller = TextEditingController();



  // list of todo tasks
  // List toDoList = [
  //   ["Make Tutorial", false],
  //   ["Do Exercise", false]
  // ];

  void checkBoxChanged(bool? value, int index) {
      setState(() {
        db.toDoList[index][1] = !db.toDoList[index][1];
      });
      db.updateDataBase();

  }

  // save new task
  void saveNewTask(){
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  // create a new task
  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        },
    );


  }

  // delete task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('To Do List'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
                taskName: db.toDoList[index][0],
                taskCompleted: db.toDoList[index][1],
                onChanged: (value) => checkBoxChanged(value, index),
                deleteFunction: (context) => deleteTask(index),
            );
          },
      )
     
    );
  }
}
