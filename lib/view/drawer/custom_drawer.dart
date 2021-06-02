import 'package:flutter/material.dart';
import 'package:ru_ufal/core/app_images.dart';
import 'package:ru_ufal/core/app_vectors.dart';
import 'package:ru_ufal/core/app_colors.dart';
import 'package:ru_ufal/view/drawer/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.defaultBlue,
        child: ListView(
          padding: EdgeInsets.only(left: 32.0, top: 10.0),
          children: <Widget>[
            DrawerHeader(
              child: Row(
                children: [
                  Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            color: AppColors.defaultBlue,
                            child: Image.asset(
                              AppImages.logo,
                              height: 90,
                            ),
                          ),
                          Text(
                            'RU UFAL',
                            style: TextStyle(color: AppColors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DrawerTile(
              imageUrl: AppVectors.forkOutlineIcon,
              text: "Cadastrar Alimento",
              controller: this.pageController,
              page: 0,
            ),
            DrawerTile(
              imageUrl: AppVectors.menuFilledIcon,
              text: "Cadastrar cardápio",
              controller: this.pageController,
              page: 1,
            ),
            DrawerTile(
              imageUrl: AppVectors.menuListFilledIcon,
              text: "Listar menu",
              controller: this.pageController,
              page: 2,
            ),
          ],
        ),
      ),
    );
  }
}
