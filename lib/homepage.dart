import 'package:flutter/material.dart';
import 'package:instagram01/pages/acount.dart';
import 'package:instagram01/pages/home.dart';
import 'package:instagram01/pages/singup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottonNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //Páginas para navegar
  final List<Widget> _children = [
    UserHome(),
    UserAccount(),
    UserSingUp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottonNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'account'),
        ],
      ),
    );
  }
}
