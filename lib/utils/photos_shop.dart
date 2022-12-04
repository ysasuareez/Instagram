import 'package:flutter/material.dart';

class Photo_shop extends StatelessWidget {
  Photo_shop({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Image.asset(
          'lib/images/shops/01.jpg',
        ),
        Image.asset(
          'lib/images/shops/02.jpg',
        ),
        Image.asset(
          'lib/images/shops/03.jpg',
        ),
        Image.asset(
          'lib/images/shops/04.jpg',
        ),
        Image.asset(
          'lib/images/shops/05.jpg',
        ),
        Image.asset(
          'lib/images/shops/06.jpg',
        ),
        Image.asset(
          'lib/images/shops/07.jpg',
        ),
      ],
    );
  }
}
