// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:marrakech_demo2/page/activities.dart';
import 'package:marrakech_demo2/page/restaurant.dart';
import 'package:marrakech_demo2/page/s_installer.dart';
import 'package:marrakech_demo2/page/s_infomer.dart';
import 'package:marrakech_demo2/page/home.dart';
import 'package:marrakech_demo2/page/secteurs_porteurs.dart';
import 'package:marrakech_demo2/page/shopping.dart';
import 'package:marrakech_demo2/page/transport.dart';
import 'package:marrakech_demo2/page/visiter.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Marrakech City';
    final image = 'assets/images/logo.png';

    return Drawer(
      child: Stack(children: <Widget>[
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: ListView(
              children: <Widget>[
                buildHeader(
                  image: image,
                  name: name,
                  onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MainPage(),
                  )),
                ),
                Container(
                  padding: padding,
                  child: Column(
                    children: [
                      const SizedBox(height: 0),
                      Divider(color: Colors.black),
                      const SizedBox(height: 24),
                      buildMenuItem(
                        text: "S'informer",
                        icon: Icons.contact_support,
                        onClicked: () => selectedItem(context, 0),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: "S'installer",
                        icon: Icons.maps_home_work_rounded,
                        onClicked: () => selectedItem(context, 1),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Restaurant',
                        icon: Icons.restaurant_rounded,
                        onClicked: () => selectedItem(context, 2),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Visiter',
                        icon: Icons.travel_explore_rounded,
                        onClicked: () => selectedItem(context, 3),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Shopping',
                        icon: Icons.shopping_bag_rounded,
                        onClicked: () => selectedItem(context, 4),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Activites',
                        icon: Icons.local_activity_rounded,
                        onClicked: () => selectedItem(context, 5),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Secteurs porteurs',
                        icon: Icons.work_rounded,
                        onClicked: () => selectedItem(context, 6),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Transport',
                        icon: Icons.emoji_transportation_rounded,
                        onClicked: () => selectedItem(context, 7),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget buildHeader({
    required String image,
    required String name,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: AssetImage(image)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Sinfomer(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Sinstaller(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Restaurant(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Visiter(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Shopping(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Activities(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Secteurs_porteurs(),
        ));
        break;
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Transport(),
        ));
        break;
    }
  }
}
