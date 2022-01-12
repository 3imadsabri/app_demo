// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:marrakech_demo2/widget/navigation_drawer_widget.dart';

class Activities extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("Activities"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
      );
}
