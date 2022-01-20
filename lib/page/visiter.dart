// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marrakech_demo2/custom/OptionButton.dart';
import 'package:marrakech_demo2/page/visiterDetail.dart';
import 'package:marrakech_demo2/sample_data.dart';
import 'package:marrakech_demo2/utils/constants.dart';
import 'package:marrakech_demo2/utils/widget_functions.dart';
import 'package:marrakech_demo2/widget/navigation_drawer_widget.dart';

class Visiter extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("Visiter"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: LandingPage(),
        ),
      );
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 4;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(padding),
                Expanded(
                  child: Padding(
                    padding: sidePadding,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: VISITER_DATA.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(
                            itemData: VISITER_DATA[index],
                          );
                        }),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              width: size.width,
              child: Center(
                child: OptionButton(
                  text: "Map View",
                  icon: Icons.map_rounded,
                  width: size.width * 0.35,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: COLOR_GREY.withAlpha(25),
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({Key? key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(
                  itemData: itemData,
                )));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset(itemData["image"])),
              ],
            ),
            addVerticalSpace(15),
            Row(
              children: [
                Text(
                  "${itemData["name"]}",
                  style: themeData.textTheme.bodyText2,
                )
              ],
            ),
            addVerticalSpace(10),
          ],
        ),
      ),
    );
  }
}
