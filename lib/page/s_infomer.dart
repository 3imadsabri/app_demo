// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:marrakech_demo2/widget/navigation_drawer_widget.dart';

class Sinfomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("S'informer"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/marrakech.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ExamplesWidget(),
        ),
      );
}

class ExamplesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.all(32),
        children: [
          buildDesc1(),
          Center(child: buildSpace()),
          Center(child: buildDesc2()),
        ],
      );

  Widget buildDesc2() {
    return Container(
      padding: EdgeInsets.all(34),
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.5),

        /*image: DecorationImage(
          image: NetworkImage(urlBackgroundImage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.25),
            BlendMode.darken,
          ),
        ),*/
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'La ville rouge',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Marrakech, ancienne cité impériale de l'ouest du Maroc, et un centre économique majeur abritant des mosquées, des palais et des jardins. ",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildSpace() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.0),
      ),
    );
  }

  Widget buildDesc1() {
    return Container(
      padding: EdgeInsets.all(34),
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fondation',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Marrakech, ancienne cité impériale de l'ouest du Maroc, et un centre économique majeur abritant des mosquées, des palais et des jardins.",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
