import 'package:bottom_navigation_bar/utils/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
        height: 120,
        child: Column(children:  [
          //get user input
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),
          // buttons -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save button
              MyButton(text: "Save", onPressed: () {}),
              // cancel button
              MyButton(text: "Cancel", onPressed: () {}),

          ],
          ),
        ],
        ),
      ),
    );
  }
}
