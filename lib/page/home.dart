// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marrakech_demo2/custom/OptionButton.dart';
import 'package:marrakech_demo2/main.dart';
import 'package:marrakech_demo2/widget/button_widget.dart';
import 'package:marrakech_demo2/widget/navigation_drawer_widget.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        //endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Builder(
          builder: (context) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/marrakech.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 20,
                  child: Center(
                    child: OptionButton(
                      text: "Map View",
                      icon: Icons.map_rounded,
                      width: 400 * 0.35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
