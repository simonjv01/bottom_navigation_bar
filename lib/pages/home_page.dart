import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ('Favorites')),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ('Account')),
      ],
      ),

    );
  }
}
