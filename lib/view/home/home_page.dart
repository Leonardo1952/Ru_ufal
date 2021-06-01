import 'package:flutter/material.dart';
import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/view/drawer/custom_drawer.dart';

import '../drawer/custom_drawer.dart';

class HomePage extends StatelessWidget {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: deviceSize.width,
        height: deviceSize.height,
        child: Row(
          children: [
            Container(
              // height: 100,
              // width: 100,
              // color: Colors.blue,
              child: CustomDrawer(pageController),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
