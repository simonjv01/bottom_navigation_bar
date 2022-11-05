import 'package:bottom_navigation_bar/pages/account.dart';
import 'package:bottom_navigation_bar/pages/blogs_page.dart';
import 'package:bottom_navigation_bar/pages/favorites_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  final List<Widget> _screens = [
    const BlogsPage(), const FavoritesPage(), const AccountPage()
  ];
  void _onPageChanged(int index) {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ('Favorites')),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ('Account')),
      ],
      ),

    );
  }
}
