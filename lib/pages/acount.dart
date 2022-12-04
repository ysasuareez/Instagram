import 'package:flutter/material.dart';
import 'package:instagram01/pages/singup.dart';
import 'package:instagram01/utils/photos_cuad.dart';

import '../utils/bubble.dart';
import '../utils/photos_shop.dart';
import '../utils/photos_tag.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //Parte de arriba donde se encuentra el nombre del usuario y dos opciones
        //más que tendrán función en un futuro
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Row(
                    children: [
                      Text('greenhousejuice ',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 17,
                      ),
                    ],
                  ),
                ),
              ],
            )),

        body: Column(
          children: [
            //ENCABEZADO CUENTA
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //FOTO PERFIL
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    width: 80,
                    height: 80,
                    alignment: Alignment.center,
                    child: Image.asset(
                      width: 45,
                      height: 45,
                      'lib/images/nece/logo.png',
                    ),
                  ),
                  //POSTS, FOLLOWERS, FOLLOWING
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text('2,279',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Text('Post'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('48.9k',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Text('Follower'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text('2,601',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //BIOGRAFIA
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Nombre and bio
                  Text(
                    'Greenhouse',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    'Food & Beverage Company',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          'lib/images/nece/bandera_canada.png',
                        ),
                      ),
                      Text(
                        ' Recreational Juicing + Plant-Based Hedonism //',
                        style: TextStyle(fontSize: 15.5),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          'lib/images/nece/mundo.png',
                        ),
                      ),
                      Text(
                        ' Le futur simple des boissons',
                        style: TextStyle(fontSize: 15.5),
                      ),
                    ],
                  ),
                  Text(
                    'blog.greenhousejuice.com/post/197058446386/co...',
                    style: TextStyle(color: Colors.blue[700], fontSize: 15),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Followed by ',
                        style: TextStyle(fontSize: 15.75),
                      ),
                      Text(
                        'bluboho, iamwellandgood and 6 others',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.75),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //BARRA CONTACTO que tendrá más funciones en un futuro (funciona pero no
            //tiene añadidas las páginas a las que será redirigida)
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, top: 15, right: 8, bottom: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 8, top: 5, right: 8, bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        width: 110,
                        height: 30,
                        alignment: Alignment.center,
                        child: Row(
                          children: const [
                            Text(
                              'Following ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 20,
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 8, top: 5, right: 8, bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        width: 100,
                        height: 30,
                        alignment: Alignment.center,
                        child: Text(
                          'Message',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 8, top: 5, right: 8, bottom: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        width: 100,
                        height: 30,
                        alignment: Alignment.center,
                        child: Text(
                          'Contact',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 20,
                        )),
                  ),
                ],
              ),
            ),
            //DESTACADOS
            Container(
              margin: EdgeInsets.only(top: 15.0, left: 15),
              height: 110.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: const [
                      Bubble(
                        text: 'Job Fair',
                        imagen: 'lib/images/nece/estrella.png',
                        width: 20,
                        height: 20,
                      ),
                      Bubble(
                        text: 'Field Notes',
                        imagen: 'lib/images/nece/flor.png',
                        width: 40,
                        height: 40,
                      ),
                      Bubble(
                        text: 'Plant Recipes',
                        imagen: 'lib/images/nece/tenedor.png',
                        width: 60,
                        height: 60,
                      ),
                      Bubble(
                        text: 'Muskoka',
                        imagen: 'lib/images/nece/mukoka.png',
                        width: 40,
                        height: 40,
                      ),
                      Bubble(
                        text: 'Pantry',
                        imagen: 'lib/images/nece/peace.png',
                        width: 25,
                        height: 25,
                      ),
                      Bubble(
                        text: 'Bottle Return',
                        imagen: 'lib/images/nece/recy.png',
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //BARRA PARA PUBLICACIONES, SHOP, ETIQUETADOS
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey.shade400),
              ),
              child: TabBar(
                  unselectedLabelColor: Colors.grey.shade400,
                  labelColor: Colors.black,
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: Colors.black)),
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.border_all_sharp,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.account_box_outlined,
                        size: 30,
                      ),
                    ),
                  ]),
            ),
            //CUADRICULAS
            Expanded(
                child: TabBarView(children: [
              Photo_cuad(),
              Photo_shop(),
              Photo_tag(),
            ])),
          ],
        ),
        endDrawer: Drawer(
          child: Container(
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: ListView(children: [
                DrawerHeader(
                    child: Center(
                  child: Text(
                    'Instagram',
                    style: TextStyle(fontSize: 40, fontFamily: 'Lobster'),
                  ),
                )),
                ListTile(
                    leading: Icon(Icons.settings_outlined),
                    title: Text('SETTINS',
                        style: TextStyle(fontSize: 20, fontFamily: 'Nunito'))),
                ListTile(
                    leading: Icon(Icons.bookmark_border_rounded),
                    title: Text('SAVED',
                        style: TextStyle(fontSize: 20, fontFamily: 'Nunito'))),
                ListTile(
                    leading: Icon(Icons.error_outline_outlined),
                    title: Text('HELP',
                        style: TextStyle(fontSize: 20, fontFamily: 'Nunito'))),
                ListTile(
                    leading: Icon(Icons.close),
                    title: Text('SING UP',
                        style: TextStyle(fontSize: 20, fontFamily: 'Nunito')),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UserSingUp()));
                    }),
              ])),
        ),
      ),
    );
  }
}
