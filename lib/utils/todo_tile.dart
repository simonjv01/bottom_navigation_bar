import 'package:flutter/material.dart';


class ToDoTile extends StatelessWidget {
  const ToDoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.yellow),
      child: const Text("Make tutorial"),
    );
  }
}
