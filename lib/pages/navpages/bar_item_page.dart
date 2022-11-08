 import 'package:flutter/material.dart';

class BarItemPage extends StatelessWidget {
   const BarItemPage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
       centerTitle: true,
       title: const Text('Bar Items'),
        ),
        body: ListView(
          children: [
            Text('A'),
            Text('B'),
            Text('C'),
          ],
        ),
      )
     );
   }
}
