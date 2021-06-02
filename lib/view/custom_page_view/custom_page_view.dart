import 'package:flutter/material.dart';
import 'package:ru_ufal/view/add_food/add_food_view.dart';
import 'package:ru_ufal/view/add_menu/add_menu_view.dart';

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
          body: AddFoodView(
            pageController: pageController,
          ),
        ),
        Scaffold(
          body: AddMenuView(
            pageController: pageController,
          ),
        ),
      ],
    );
  }
}
