import 'package:flutter/material.dart';


class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

   ToDoTile({Key? key, required this.taskName, required this.taskCompleted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
       child: Container(
          padding: EdgeInsets.all(24.0),
          decoration:  BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children:  [
              // checkbox
              Checkbox(value: false, onChanged: onChanged),
              // task name
               Text(taskName),
            ],
          ),
        ),

    );
  }
}
