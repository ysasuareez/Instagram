import 'package:flutter/material.dart';

class Photo_cuad extends StatelessWidget {
  Photo_cuad({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Image.asset(
          'lib/images/posts/piña.jpg',
        ),
        Image.asset(
          'lib/images/posts/plantas.jpg',
        ),
        Image.asset(
          'lib/images/posts/mini.jpg',
        ),
        Image.asset(
          'lib/images/posts/arbol.jpg',
        ),
        Image.asset(
          'lib/images/posts/naranja.jpg',
        ),
        Image.asset(
          'lib/images/posts/recepcion.jpg',
        ),
        Image.asset(
          'lib/images/posts/mini2.jpg',
        ),
        Image.asset(
          'lib/images/posts/cafes.jpg',
        ),
        Image.asset(
          'lib/images/posts/mini2.jpg',
        ),
        Image.asset(
          'lib/images/posts/cafes.jpg',
        ),
        Image.asset(
          'lib/images/posts/zumos.jpg',
        ),
        Image.asset(
          'lib/images/posts/tienda.jpg',
        ),
      ],
    );
  }
}
