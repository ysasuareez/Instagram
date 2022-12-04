import 'package:flutter/material.dart';

class Photo_tag extends StatelessWidget {
  Photo_tag({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Image.asset(
          'lib/images/etique/01.jpg',
        ),
        Image.asset(
          'lib/images/etique/02.jpg',
        ),
        Image.asset(
          'lib/images/etique/03.jpg',
        ),
        Image.asset(
          'lib/images/etique/04.jpg',
        ),
        Image.asset(
          'lib/images/etique/05.jpg',
        ),
        Image.asset(
          'lib/images/etique/06.jpg',
        ),
        Image.asset(
          'lib/images/etique/07.jpg',
        ),
        Image.asset(
          'lib/images/etique/08.jpg',
        ),
        Image.asset(
          'lib/images/etique/09.jpg',
        ),
        Image.asset(
          'lib/images/etique/10.jpg',
        ),
      ],
    );
  }
}
