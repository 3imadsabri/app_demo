// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:marrakech_demo2/main.dart';
import 'package:marrakech_demo2/widget/navigation_drawer_widget.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

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
      body: new FlutterMap(
          options: new MapOptions(
              center: new LatLng(31.630000, -8.008889), minZoom: 10.0),
          layers: [
            new TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'])
          ]));
}
