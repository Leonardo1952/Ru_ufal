import 'package:flutter/material.dart';

import '../drawer/custom_drawer.dart';
import '../home/home_page.dart';

class CustomPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    return PageView(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Scaffold(
          body: HomePage(pageController: pageController),
          drawer: CustomDrawer(pageController),
        ),
      ],
    );
  }
}
