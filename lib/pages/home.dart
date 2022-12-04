import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text(' Welcome to Instagram',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Lobster', fontSize: 55))));
  }
}
