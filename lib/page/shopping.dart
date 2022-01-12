// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marrakech_demo2/widget/navigation_drawer_widget.dart';

class Shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("Shopping"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}
